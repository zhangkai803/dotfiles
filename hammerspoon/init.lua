-- make undefined global to local
local hs = hs

local logger = hs.logger.new("zk", 3)

-- hyper key
local hyper = {"ctrl", "alt", "cmd"}

-- load spoons
hs.loadSpoon("ModalMgr")
hs.loadSpoon("ClipboardTool")

-- functions
local function test ()
    hs.notify.show("hammerspoon", "Test done.", "")
end

local function changeVolume (diff)
    return function()
        local current = hs.audiodevice.defaultOutputDevice():volume()
        local new = math.min(100, math.max(0, math.floor(current + diff)))
        if new > 0 then
            hs.audiodevice.defaultOutputDevice():setMuted(false)
        end
        hs.alert.closeAll(0.0)
        hs.alert.show("Volume " .. new .. "%", {}, 0.5)
        hs.audiodevice.defaultOutputDevice():setVolume(new)
    end
end

-- hotkeys
-- greeting and test
hs.hotkey.bind(hyper, "t", function () hs.notify.show("Hello world!", "welcome to hammerspoon", "") test() end)
-- reload config
hs.hotkey.bind(hyper, "r", function () hs.reload() end)
-- toggle hs console
hs.hotkey.bind(hyper, "c", function () logger.i("toggleConsole call") hs.toggleConsole() logger.i("toggleConsole end") end)
-- incr audio vloume
hs.hotkey.bind(hyper, 'up', changeVolume(3))
-- decr audio vloume
hs.hotkey.bind(hyper, 'down', changeVolume(-3))

if spoon.ClipboardTool then
    spoon.ClipboardTool.hist_size = 10
    spoon.ClipboardTool.show_copied_alert = false
    spoon.ClipboardTool.show_in_menubar = false
    spoon.ClipboardTool:start()
    spoon.ClipboardTool:bindHotkeys({
        toggle_clipboard = {hyper, 'v'}
    })
end

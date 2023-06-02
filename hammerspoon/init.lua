-- make undefined global to local
local hs = hs

-- hyper key
local hyper = {"ctrl", "alt", "cmd"}

-- load spoons
hs.loadSpoon("ModalMgr")
hs.loadSpoon("ClipShow")

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
-- test
hs.hotkey.bind(hyper, "t", function () test() end)
-- greeting and test
hs.hotkey.bind(hyper, "h", function () hs.notify.show("Hello world!", "welcome to hammerspoon", "") test() end)
-- reload config
hs.hotkey.bind(hyper, "r", function () hs.reload() end)
-- toggle hs console
hs.hotkey.bind(hyper, "c", function () hs.toggleConsole() end)
hs.hotkey.bind(hyper, 'up', changeVolume(3))
hs.hotkey.bind(hyper, 'down', changeVolume(-3))

if spoon.ClipShow then
    hs.hotkey.bind(hyper, "v", function () spoon.ClipShow.toggleShow() end)
end

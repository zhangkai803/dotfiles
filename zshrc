# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/k/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    colored-man-pages
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

tabs 4

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias abcdefghijklmnopqrstuvwxyz="echo 👍"

alias gdh="git diff HEAD^ HEAD"

alias pydep_install="pip install -i https://pypi:9LmOBdpxKQ3B@pypi.weike.fm/ --trusted-host pypi.weike.fm -r requirements.txt"
alias notebook="cd ~/self/demo && env_demo && jupyter notebook"

alias win11="prlctl start \"Windows 11\""
alias sshpub="cat ~/.ssh/id_rsa.pub"

alias proxy="export all_proxy=socks5://127.0.0.1:7891"

alias log_cms_prod_cms_server="kklog -d wk-miniprogram-cms -e prod -n wk-miniprogram-cms -ns iprod -t api -l 2000 2> /tmp/kklog_grep_buf_`date +%s` | tail -f /tmp/kklog_grep_buf_`date +%s`"
alias log_cms_prod_async_task="kklog -d wk-miniprogram-cms -e prod -n wk-miniprogram-cms-async-task -ns iprod -t script -l 2000 2> /tmp/kklog_grep_buf_`date +%s` | tail -f /tmp/kklog_grep_buf_`date +%s`"
alias log_cms_prod_auto_scheduler="kklog -d wk-miniprogram-cms -e prod -n wk-miniprogram-cms-auto-scheduler -ns iprod -t script -l 2000 2> /tmp/kklog_grep_buf_`date +%s` | tail -f /tmp/kklog_grep_buf_`date +%s`"
alias log_doc_prod_server="kklog -d wk-documents -e prod -n wk-documents -ns iprod -t api -l 2000 2> /tmp/kklog_grep_buf_`date +%s` | tail -f /tmp/kklog_grep_buf_`date +%s`"
alias log_wk_prod_server="kklog -d main-weike -e prod -n main-weike -ns main-weike -t api -l 2000 2> /tmp/kklog_grep_buf_`date +%s` | tail -f /tmp/kklog_grep_buf_`date +%s`"

alias aseprite="~/source_code/aseprite/build/bin/aseprite"

# Init py venv alias
echo ">> Init pyenv alias."
echo ">> Env dir: ~/.virtualenv"
for dir in $(ls ~/.virtualenv)
do
    [ -d $dir ] && echo "alias env_$dir=\"source ~/.virtualenv/${dir}/bin/activate\"" #先判断是否是目录，然后再输出
    alias env_$dir="source ~/.virtualenv/${dir}/bin/activate" #先判断是否是目录，然后再输出
done
echo ">> Pyenv alias init complete."
# for dir in $(ls ~/.pyvirtualenv)
# do
    # [ -d $dir ] && echo "alias env_$dir=\"source ~/.virtualenv/${dir}/bin/activate\"" #先判断是否是目录，然后再输出
    # alias env_$dir="source ~/.pyvirtualenv/${dir}/bin/activate" #先判断是否是目录，然后再输出
# done
# echo ">> Pypyenv alias init complete."
#echo "-------------------------------------------------------"
#echo "终极黑客终端已开启！颤抖吧五角大楼！勇敢🐂🐂 不怕困难！"
#echo "-------------------------------------------------------"

# ### my conf ###
# mysql
export PATH=/usr/local/mysql/bin:$PATH
# node
# export PATH=/usr/local/opt/node@10/bin:$PATH
# redis
#export PATH="/usr/local/opt/redis@4.0/bin:$PATH"
# i386 dev
export PATH="$HOME/opt/bin:$PATH"
# zlib
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
# pypy
export PATH="$HOME/opt/pypy3.7-v7.3.7-osx64/bin:$PATH"
# go
export PATH="$HOME/go/bin:$PATH"
# java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home"
# local bin
export PATH="$HOME/.local/bin:$PATH"
# php@7.2
export PATH="/usr/local/Cellar/php@7.2/7.2.34_6/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/k/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/k/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/k/opt/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/k/opt/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<
export PATH="/Users/k/opt/anaconda3/bin:$PATH"
# <<< my conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


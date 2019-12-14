# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/Development/flutter/bin:$PATH
export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="/usr/local/share/dotnet:$PATH"
export PATH="/Users/rico/Library/Python/3.7/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Android
export ANDROID_SDK_ROOT='/usr/local/share/android-sdk'
export ANDROID_HOME="$ANDROID_SDK_ROOT"
export ANDROID_NDK_HOME='/usr/local/share/android-ndk'
export ANDROID_BT_VERSION="$(ls -tr $ANDROID_SDK_ROOT/build-tools | sort | tail -1)"

export PATH="$ANDROID_SDK_ROOT/bin:$PATH"
export PATH="$ANDROID_SDK_ROOT/build-tools/$ANDROID_BT_VERSION:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
export PATH="$ANDROID_SDK_ROOT/tools:$PATH"
export PATH="$ANDROID_NDK_HOME/:$PATH"


# Path to your oh-my-zsh installation.
export ZSH="/Users/cloverbyte/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

# User prefix
# DEFAULT_USER=`whoami`
DEFAULT_USER=$(whoami)
POWERLEVEL9K_ALWAYS_SHOW_USER=true

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}


POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

# alias brewery='brew update && brew upgrade && brew tap caskroom/cask && brew cleanup'
alias brewery='brew update && brew upgrade && brew tap && brew cleanup'
alias listbrew='brew list && echo "\n####################        Cask        ####################\n" && brew cask list'

alias iossim='open -a Simulator'


# alias jstart='sudo launchctl load /Library/LaunchDaemons/org.jenkins-ci.plist'
# alias jstop='sudo launchctl unload /Library/LaunchDaemons/org.jenkins-ci.plist'
# alias jrestart='jstop && jstart'

alias jstart='brew services start jenkins-lts'
alias jstop='brew services stop jenkins-lts'
alias jrestart='brew services restart jenkins-lts'

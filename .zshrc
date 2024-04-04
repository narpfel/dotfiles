# Based on the `.zshrc` template that comes with `oh-my-zsh`.

prompt off

setopt share_history

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="custom-pygmalion"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

DEFAULT_USERNAME=paul

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    git
    compleat
    dircycle
    per-directory-history
    pip
    python
    systemd
    autojump
    rust
    tmux
    sublime
    virtualenv
    docker
    # zsh-syntax-highlighting
)

# unbreak git prompt, doesn’t work with async
zstyle ':omz:alpha:lib:git' async-prompt no

source $ZSH/oh-my-zsh.sh


# User configuration

export HISTSIZE=1000000000
export SAVEHIST=1000000000

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"

if which nvim > /dev/null; then
    export EDITOR=nvim VISUAL=nvim
elif which vim > /dev/null; then
    export EDITOR=vim VISUAL=vim
else
    export EDITOR=nano VISUAL=nano
fi

export CMAKE_EXPORT_COMPILE_COMMANDS=ON

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

source $HOME/.zsh_aliases
test -r $HOME/.zsh_aliases_private && source $HOME/.zsh_aliases_private


function source_cuda_paths() {
    export CPATH=/opt/cuda/include
    export LIBRARY_PATH=/opt/cuda/lib
    export LD_LIBRARY_PATH=/opt/cuda/lib
}

screencast() {
    p() {
        PROMPT="%0~ » "
        RPROMPT=""
    }
    precmd_functions+=(p)
}

end_screencast() {
    precmd_functions[$precmd_functions[(i)p]]=()
}

_build_virtualenv() {
    local virtualenv_command="$1"; shift
    local args=()
    while true; do
        case "$1" in
            -*)
                args+=("$1")
                shift
                ;;
            # TODO: Implement `-*|--*=*)`
            *)
                break
                ;;
        esac
    done
    local venv="${1:-venv}"
    if [ $# -ne 0 ]; then
        shift
    fi

    if [[ ! -e "$venv" ]]; then
        echo "Create new virtualenv in \`$venv\`."
        ${(Q)${(z)virtualenv_command}} "$venv" "${args[@]}" "$@" || return 1
    elif [[ ! -d "$venv" || ! -f "$venv"/bin/activate ]]; then
        echo "Could not activate venv in \`$venv\`."
        return 1
    fi
    echo "Activating virtualenv in \`$venv\`."
    . "$venv"/bin/activate
}

vv() {
    _build_virtualenv virtualenv "$@"
}

vt() {
    _build_virtualenv "tox --devenv" "$@"
}

on_modify() {
    local directory="$1"; shift
    while inotifywait -e modify "$directory"; do
        eval "$@"
    done
}

# History
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

# Zsh
setopt appendhistory extendedglob notify auto_pushd correct
unsetopt beep nomatch
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*:(all-|)files' ignored-patterns '*.o' '*.hi'
autoload -Uz compinit
compinit
autoload colors
colors
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^r" history-incremental-search-backward
bindkey -e # Vi keybind on terminal

# Editor
export EDITOR=vi
alias vimrc='$EDITOR ~/.vimrc'
alias zshrc='$EDITOR ~/.zshrc'
alias initel='$EDITOR ~/.emacs.d/init.el'
#alias mvim="open -a ~/Applications/MacVim.app"
alias ia="open $1 -a /Applications/iA\ Writer.app"

# Unix commands
alias lv='lv -c'
alias t='tmux'
alias grep='grep --color=auto'
alias browse='hub browse'

# Git
alias g='git'
alias s='git s'
alias m='git checkout master'
alias d='git d'
alias gi='git'
alias gg='g g'
#function git(){hub "$@"}

# Ruby
alias be='bundle exec'
alias bes='bundle exec spring'
alias b/='bin/'
alias b='bundle'

# Misc
alias color='for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done'

# Path
export PATH=/usr/local/bin:$PATH

# Prompt
source ~/.prompt.zshrc
#source ~/.zshrc.local

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

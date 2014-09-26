# From http://d.hatena.ne.jp/mollifier/20090814/p1
autoload -Uz vcs_info

# some_branch
zstyle ':vcs_info:*' formats '%b'

# some_branch | rebase-i
zstyle ':vcs_info:*' actionformats '%b|%a'

function cabal_sandbox_info() {
  cabal_files=(*.cabal(N))
  if [ $#cabal_files -gt 0 ]; then
    if [ -f cabal.sandbox.config ]; then
      echo "%F{green}sandboxed%f"
    else
      echo "%K{red}not sandboxed%k"
    fi
  fi
}

# The command which will run before prompt
precmd () {

  # Set git info to '1v'
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"

}

# Right prompt
RPROMPT="%F{029}%~% %(!.#.)%f%1(v|%F{240} %1v%f|)"

# Left prompt
PROMPT="%F{211}🐠%f "
PROMPT="%F{211}$%f "

# Question prompt
SPROMPT="%B%F{255}%K{044}%r ? %f%k%}%b n,y,a,e :"

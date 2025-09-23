function git_main_branch() {
  command git rev-parse --git-dir &>/dev/null || return
  local ref
  for ref in refs/{heads,remotes/{origin,upstream}}/{main,trunk,mainline,default,stable,master}; do
    if command git show-ref -q --verify $ref; then
      echo ${ref:t}
      return 0
    fi
  done

  # If no main branch was found, fall back to master but return error
  echo master
  return 1
}

alias brwe='brew'
alias reload!='exec zsh'
alias reset!='clear && printf "\e[3J"' # https://askubuntu.com/a/473770
alias gco='git checkout'
alias gcm='git checkout $(git_main_branch)'
alias gst='git status'
alias gb='git branch'

hash -d books="$HOME/Library/Containers/com.apple.BKAgentService/Data/Documents/iBooks"
hash -d icloud="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
hash -d podcasts="$HOME/Library/Group Containers/243LU875E5.groups.com.apple.podcasts"

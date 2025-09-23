# Spaceship prompt -- https://spaceship-prompt.sh/

function isLaptop() {
  local model
  model=$(system_profiler SPHardwareDataType | grep "Model Name" | sed 's/.*Model Name: //')

  if [[ "$model" == "MacBook"* ]]; then
    return 1
  else
    return 0
  fi
}

SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
  # user           # Username section
  dir            # Current directory section
  # host           # Hostname section
  git            # Git section (git_branch + git_status)
  package        # Package version
  node           # Node.js section
  # exec_time      # Execution time
  async          # Async jobs indicator
  # line_sep       # Line break
  jobs           # Background jobs indicator
  # exit_code      # Exit code section
  # sudo           # Sudo indicator
  char           # Prompt character
)

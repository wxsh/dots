local IT="${terminfo[sitm]}${terminfo[bold]}"
local ST="${terminfo[sgr0]}${terminfo[ritm]}"

function collapse_pwd {
	if [[ $(pwd) == $HOME ]]; then
		echo "~"
	else
		echo $(pwd | sed -e "s,^$HOME,~,")
	fi
}

function check_host {
	if [[ -n $SSH_CONNECTION ]]; then 
		echo "${USER}:${HOST}:${TTY}"
	else
		echo ""
	fi
}


local FMT_BRANCH="%F{9}(%s:%F{7}%{$IT%}%r%{$ST%}%F{9}) %F{11}%B%b %K{235}%{$IT%}%u%c%{$ST%}%k"
local FMT_ACTION="(%F{3}%a%f)"
local FMT_PATH="%F{1}%R%F{2}/%S%f"

setprompt() {
  local USER="%(#.%F{1}.%F{3})%n%f"
  local HOST="%F{1}%M%f"
  local PWD="%F{4}$(collapse_pwd)%f"
  local TTY="%F{4}%y%f"
  local EXIT="%(?..%F{197} %?%f)"
  local PRMPT="$(check_host) ${PWD}
${EXIT} %F{197}»%f "

  if [[ "${vcs_info_msg_0_}" == "" ]]; then
   PROMPT="$PRMPT"
   RPROMPT="%T"
  else
   PROMPT="$PRMPT"
   RPROMPT="${vcs_info_msg_0_} %T"
  fi
}

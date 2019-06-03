########################################
# プロンプト

# Removing space after RPROMPT
#ZLE_RPROMPT_INDENT=0

preexec() {
  #timer=${timer:-$SECONDS}
  timer=$(($(date +%s%N)/1000000))
}

precmd () {
    vcs_info
    PROMPT="%F{red}[$(shrink_path -f)]%f %F{magenta}[%n@%m]%f ${vcs_info_msg_0_}
%F{blue}%B>>%b%f "

    if [ $timer ]; then
        now=$(($(date +%s%N)/1000000))
        elapsed=$(($now-$timer))
        RPROMPT="%F{yellow}${elapsed}ms%f"
        unset timer
    fi
}

# Example calling a function
# Using "%m" instead...
#function get_host {
#    echo '@'$HOST
#}
#RPROMPT="%F{blue}%~%n$(get_host)%f ${vcs_info_msg_0_}"

# Example using precmd()
#precmd() {
#    prompt_l="$(date '+%F %T')"
#    prompt_r="${USER}@$(uname -n)"
#    printf "%s%$((${COLUMNS} - ${#prompt_l}))s\n" "${prompt_l}" "${prompt_r}"
#}

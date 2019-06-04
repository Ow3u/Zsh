########################################
# プロンプト

# Remove space after RPROMPT
#ZLE_RPROMPT_INDENT=0

# Do not let virtualenv change prompt
VIRTUAL_ENV_DISABLE_PROMPT=1

preexec() {
  TIMER=$(($(date +%s%N)/1000000))
}

precmd () {
    # Git
    vcs_info

    # Virtualenv
    PYTHON_VENV=""
    PYTHON_VERSION="py:$(python -c 'import platform;print(platform.python_version())')"
    if [ -n "$VIRTUAL_ENV" ]; then
        PYTHON_VENV=":`basename \"$VIRTUAL_ENV\"`"
    fi

    # Execution timer
    if [ $TIMER ]; then
        NOW=$(($(date +%s%N)/1000000))
        ELAPSED=$(($NOW-$TIMER))
        RPROMPT="%F{yellow}${ELAPSED}ms%f"
        unset TIMER
    fi

    PROMPT="%F{red}[$(shrink_path -f)] %F{magenta}[%n@%m] %F{cyan}(${PYTHON_VERSION}${PYTHON_VENV}) ${vcs_info_msg_0_}
%F{blue}%B%(!.#.$)%b%f "
}


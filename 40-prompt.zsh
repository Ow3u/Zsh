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
    if [ -n "$VIRTUAL_ENV" ]; then
        PYTHON_VERSION=$(python -c 'import platform;print(platform.python_version())')
        PYTHON_VENV="(py:${PYTHON_VERSION}:`basename ${VIRTUAL_ENV}`) "
    fi

    # Execution timer
    if [ $TIMER ]; then
        NOW=$(($(date +%s%N)/1000000))
        ELAPSED=$(($NOW-$TIMER))
        RPROMPT="%F{yellow}${ELAPSED}ms%f"
        unset TIMER
    fi

    PROMPT="%F{green}[$(shrink_path -f)] %F{red}%n@%m %F{magenta}${PYTHON_VENV}${vcs_info_msg_0_}
%F{blue}%(!.#.$) "
}


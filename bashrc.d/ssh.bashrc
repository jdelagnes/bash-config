# Note that in ~/.config/systemd/user/ssh-agent.service, %t in the former corresponds to ${XDG_RUNTIME_DIR}
if [ -n "${XDG_RUNTIME_DIR}" ]; then
    export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
fi

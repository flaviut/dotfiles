function steam() {
  LD_PRELOAD='/usr/$LIB/libstdc++.so.6 /usr/$LIB/libgcc_s.so.1 /usr/$LIB/libxcb.so.1 /usr/$LIB/libgpg-error.so' /usr/bin/steam
}

alias ssh="TERM=xterm-256color ssh"
alias docker="sudo docker"
alias ncdu="ncdu --color dark -rr -x"
alias diff=diff-so-fancy

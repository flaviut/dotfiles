[ -z "$DISPLAY" -a "$(fgconsole 2> /dev/null )" -eq 1 ] && exec startx

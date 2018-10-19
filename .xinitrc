eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh) && \
export SSH_AUTH_SOCK
volnoti
setxkbmap -option compose:caps &
/usr/bin/start-pulseaudio-x11 &
xset m 3.5 1 &
backgroundize &
lxqt-policykit-agent &
redshift &
xscreensaver -no-splash &
exec i3

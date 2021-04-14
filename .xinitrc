if [ -d /etc/X11/xinit/xinitrc.d ] ; then
        for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
                [ -x "$f" ] && . "$f"
        done
        unset f
fi

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh) && \
export SSH_AUTH_SOCK
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
setxkbmap -option compose:caps &
exec --no-startup-id /usr/lib/kdeconnectd & kdeconnect-indicator &
/usr/bin/start-pulseaudio-x11 &
xset mouse 3.5 1 &  # mouse <acceleration> <threshold>

xset s 300 &  # screensaver <inactivity timeout seconds>
export XSECURELOCK_BLANK_DPMS_STATE=standby \
       XSECURELOCK_WANT_FIRST_KEYPRESS=1 \
       XSECURELOCK_AUTH=auth_x11 \
       XSECURELOCK_SAVER=saver_blank \
       XSECURELOCK_BLANK_TIMEOUT=5
xss-lock -l -- xsecurelock &

# rotate desktop backgrounds
backgroundize &

lxqt-policykit-agent &
redshift &
blueman-applet &

exec i3

export PATH=$PATH:/home/user/bin/:/home/user/etc/.nimble/bin/

random-str () {
	if (($+1))
	then
		cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w $1 | head -n 1
	else
		cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1
	fi
}


if [[ "$COLORTERM" != "truecolor" && -z "$SSH_CONNECTION" ]]; then
  # we're running in intellij; dumb things down so that the prompt behaves
  # reasonably.
  export TERM=
fi

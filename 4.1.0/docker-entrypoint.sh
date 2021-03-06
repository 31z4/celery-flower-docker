#!/bin/sh
set -e

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- flower "$@"
fi

# allow the container to be started with `--user`
if [ "$1" = "flower" -a "$(id -u)" = '0' ]; then
	exec gosu flower "$0" "$@"
fi

exec "$@"

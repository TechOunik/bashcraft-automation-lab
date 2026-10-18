#!/bin/bash
hello () {
	local s=$1
	echo "hello $s!"
}

goodbye () {
	local s=$1
	echo "goodbye $s!"
}

if (($# == 0)); then
	echo 'name required!' >&2

fi



for  name in "$@"; do
	case "$name" in
		d*|b*) hello "$name";;
		*) goodbye "$name";;
esac

done


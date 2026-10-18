#!/bin/bash

until [[ -f file.txt ]]; do
	echo 'file.txt does not exists'
	sleep 1

done

echo 'file exist'


#!/bin/bash

if test -f $HOME/.bashrc; then
	echo "HELLO=$HOSTNAME" >> $HOME/.bashrc
	echo "LOCAL=$(whoami)" >> $HOME/.bashrc
	gnome-terminal
fi

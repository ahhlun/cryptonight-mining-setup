#!/bin/sh

export PROMPT_COMMAND='export PS1="\[\e]0;\u@NODEID: \w\a\]${debian_chroot:+($debian_chroot)}\u@NODEID:\w\$ "'
cd /mnt/batch/tasks/startup/wd/
cd xmr-stak/bin/
echo -ne "\033]0;$USER@NODEID: $PWD\007"
less +F status.log

# ~/.bashrc: executed by bash(1) for non-login shells.

bashrc_d=${HOME}/.config/bash/bashrc.d

if [ -d ${bashrc_d} ]; then
  for i in ${bashrc_d}/*.bashrc; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi

#!/bin/bash
red='\e[0;31m'
green='\e[0;32m'
orange='\e[0;33m'
blue='\e[0;34m'
purple='\e[0;35m'
cyan='\e[0;36m'
white='\e[0;38m'
white_bold='\e[1;37m'

echo -e $red"Bash Color Changer v1.0"
echo -e $green"Copyright (C) 2014 - Pierlauro Sciarelli$white\n"

echo -e "LEGENDA: "$red"red "$green"green "$orange"orange "$blue"blue "$purple"purple "$cyan"cyan "$white"white\n"
echo -e $white"Your prompt is going to be like: $white_bold"$USER"@"$HOSTNAME" current_directory $\n"
echo -e $white"What color you want $white_bold$USER"$white?
read user
echo -e $white"What color you want $white_bold"@"$white?"
read et
echo -e "What color you want $white_bold$HOSTNAME$white?"
read host
echo -e "What color you want "$white_bold"current_directory"$white"?"
read dir
echo -e "What color you want $ ?"
read dollar

echo export PS1=\"${!user}"\u"${!et}"@"${!host}"\h "${!dir}"\W"${!dollar}" $\e[m "\" "## Line added by ColorBash">> ~/.bashrc
exec bash

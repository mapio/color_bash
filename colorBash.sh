#!/bin/bash
declare -A colors
colors=([red]='\e[0;31m' [green]='\e[0;32m' [orange]='\e[0;33m' [blue]='\e[0;34m' [purple]='\e[0;35m' [cyan]='\e[0;36m' [white]='\e[0;38m' [white_bold]='\e[1;37m')

echo -e ${colors[red]}"Bash Color Changer v1.0"
echo -e ${colors[green]}"Copyright (C) 2014 - Pierlauro Sciarelli${colors[white]}\n"

echo -e "LEGEND: "${colors[red]}"red "${colors[green]}"green "${colors[orange]}"orange "${colors[blue]}"blue "${colors[purple]}"purple "${colors[cyan]}"cyan "${colors[white]}"white\n"
echo -e ${colors[white]}"Your prompt is going to be like: ${colors[white_bold]}"$USER"@"$HOSTNAME" current_directory $\n"
echo -e ${colors[white]}"What color you want ${colors[white_bold]}$USER"${colors[white]}?
read user
echo -e ${colors[white]}"What color you want ${colors[white_bold]}"@"${colors[white]}?"
read et
echo -e "What color you want ${colors[white_bold]}$HOSTNAME${colors[white]}?"
read host
echo -e "What color you want "${colors[white_bold]}"current_directory"${colors[white]}"?"
read dir
echo -e "What color you want $ ?"
read dollar
echo -e ${colors[white]}"What color you want ${colors[white_bold]}commands"${colors[white]}?
read com

sed -i '/export\(.*\)##Line added by ColorBash/d' ~/.bashrc
echo export PS1=\"${colors[$user]}"\u"${colors[$et]}"@"${colors[$host]}"\h "${colors[$dir]}"\W"${colors[$dollar]}" $ "${colors[$com]}\" "##Line added by ColorBash">> ~/.bashrc
exec bash

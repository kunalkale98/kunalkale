#!/bin/bash -x

declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Cow sounds" ${sounds[cow]}
echo "All animals sounds" ${sounds[@]}
echo "Animal Names" ${!sounds[*]}
echo "Number of rows" ${#sounds[@]}
unset sound[wolf]
echo ${sounds[@]}

#!/usr/local/bin/zsh

NAME="JBL TUNE760NC"
CONNECTION_STRING="$(blueutil --paired | grep $NAME)"
ADDRESS="$(echo "$CONNECTION_STRING" | cut -d' ' -f 2 | sed 's/,//')"

if [[ "$CONNECTION_STRING" = *"not connected"* ]] then
  blueutil --connect "$ADDRESS"
else
  blueutil --disconnect "$ADDRESS"
fi

#! /bin/sh

if [ -z "$1" -o ! -f $1 ]; then
  echo Please, give me a valid filename to pygmentize
  exit 1
fi

echo copy output into HTML text of article
echo -------------------------------------
pygmentize -f html $1 | xclip -selection clipboard
xclip -selection clipboard -o
echo -------------------------------------------
echo HTML above must already be in the clipboard

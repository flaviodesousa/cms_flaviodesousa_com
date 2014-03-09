#! /bin/sh

source_file=$1
shift

if [ -z "$source_file" -o ! -f $source_file ]; then
  echo Please, give me a valid filename to pygmentize
  exit 1
fi

echo copy output into HTML text of article
echo -------------------------------------
pygmentize -f html $* $source_file | xclip -selection clipboard
xclip -selection clipboard -o
echo -------------------------------------------
echo HTML above must already be in the clipboard

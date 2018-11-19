#!/bin/bash

#IFS=$'\n\t'

fmt="%-4s i:%2i >%s<\n"

echo "Anzahl Parameter: $#"

echo
i=0
for p in $*
do
  printf "${fmt}" '$*' $((i++)) "${p}"
done

echo
i=0
for p in "$*"
do
  printf "${fmt}" '"$*"' $((i++)) "${p}"
done

echo
i=0
for p in $@
do
  printf "${fmt}" '$@' $((i++)) "${p}"
done

echo
i=0
for p in "$@"
do
  printf "${fmt}" '"$@"' $((i++)) "${p}"
done


#!/bin/bash

ROOT="."
HTTP="/"
OUTPUT="content-list.html" 

i=0
echo "<UL>" > $OUTPUT
for filepath in $(find "$ROOT" -type d| sort); do
  path=$(basename "$filepath")
  echo "  <LI>$path</LI>" >> $OUTPUT
  echo "  <UL>" >> $OUTPUT
  for i in $(find "$filepath" -maxdepth 1 -type f| sort); do
    file=$(basename "$i")
    echo "    <LI><a href=\"/$path/$file\">$file</a></LI>" >> $OUTPUT
  done
  echo "  </UL>" >> $OUTPUT
done
echo "</UL>" >> $OUTPUT

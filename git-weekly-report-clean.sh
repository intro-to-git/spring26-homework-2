#!/bin/bash

echo "Git Weekly Report"
echo "-----------------"

for i in {0..6}
do
  day=$(date -d "$i days ago" +"%d.%m.%Y")

  commits=$(git log --since="$i days ago" --until="$((i-1)) days ago" --oneline | wc -l)

  authors=$(git log --since="$i days ago" --until="$((i-1)) days ago" --pretty="%an" | sort | uniq | tr '\n' ',')

  if [ "$commits" -gt 0 ]; then
    echo "$day - $commits commits by $authors"
  fi
done

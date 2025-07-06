#!/bin/bash

for i in {1..10}
do
  echo "<p>Commit #$i - $(date)</p>" >> index.html
  git add .
  git commit -m "chore: daily html commit #$i"
done

git push

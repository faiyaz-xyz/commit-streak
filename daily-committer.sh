#!/bin/bash

for i in {1..10}
do
  quote="\"Auto quote #$i - $(date +'%b %d %Y %H:%M:%S') 🧠🔥\""
  sed -i "/const quotes = \[/a \  $quote," quotes.js

  git add .
  git commit -m "feat: add auto quote $i"
done

git push

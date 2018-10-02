#!/bin/bash

titles=("Lord" "Duke" "General" "Admiral" "Commander")
echo ${#titles[@]}
title_index=$(( RANDOM % ${titles[@]}))
title=${titles[$title_index]}
echo $title

#!/bin/bash

[ -v MYWAR ] && echo "The variable MYVAR exists"
[ -v MYWAR ] || echo "The variable MYVAR doet not exist"

[ -v MYWAR ] && [ -n "$MYVAR" ] && echo "The variable MYVAR has data in it"
[ -v MYWAR ] && [ -z "$MYVAR" ] && echo "The variable MYVAR is empty"

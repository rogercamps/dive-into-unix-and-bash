#!/bin/bash

# Q:
# Create a script which will print a random word.
# A:
cat -n /usr/share/dict/words | grep -w $(jot -r 1 1 $n) | cut -f2

#!/bin/sh 
# xmlpp.sh
# XML color pretty-print for the terminal.

xmllint --format $1 | source-highlight -s xml -f esc256


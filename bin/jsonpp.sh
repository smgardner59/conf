#!/bin/sh
# jsonpp.sh
# Pretty print and colorize JSON files.
#

json_reformat !$ | source-highlight -s json -f esc256


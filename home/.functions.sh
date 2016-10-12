# .functions.sh
# 
# shell functions that get loaded automatically.
#
# 2016-10-12 smg - Added jcurl for curl to JSON pp.

# jcurl
# Use curl to retrieve JSON and make the oupt pretty.
# From Jakub Stas https://www.systemcodegeeks.com/shell-scripting/bash/formatting-coloring-curl-output/
#
function jcurl() {
  curl "$@" | json_pp | pygmentize -l json
}
export jcurl


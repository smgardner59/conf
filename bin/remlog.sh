#!/bin/bash
#
# Search remote log files for content.
# @authonr scott m gardner
#
# HISTORY
#---------------------------------------------------------
# 2015-07-28  smg  Created.
#
originhosts=(1 2 3 4 5 6 7 8 9 10)
username=dev
logroot=/usr/local/WowzaStreamingEngine/logs
logfiles=(origin_error.log origin_access.log)

for host in ${originhosts[@]}; do
	echo "== $host =="
done
echo "Done"


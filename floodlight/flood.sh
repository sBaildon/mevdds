#!/bin/bash

FLOOD='{"switch": "'$1'", "name":"normal-'$1'", "cookie":"0", "priority":"0", "active":"true", "actions":"output=flood"}' 
echo $FLOOD
curl -d "$FLOOD" http://127.0.0.1:8080/wm/staticflowentrypusher/json

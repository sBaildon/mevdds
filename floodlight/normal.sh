#!/bin/bash

NORMAL='{"switch": "'$1'", "name":"normal", "cookie":"0", "priority":"0", "active":"true", "actions":"output=normal"}' 
echo $NORMAL
curl -d "$NORMAL" http://127.0.0.1:8080/wm/staticflowentrypusher/json

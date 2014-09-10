#!/bin/bash

NORMAL='{"switch": "00:01:00:9c:02:b1:ff:c0", "name":"normal-drain", "cookie":"0", "priority":"0", "active":"true", "actions":"output=normal"}' 
echo $NORMAL
curl -d "$NORMAL" http://127.0.0.1:8080/wm/staticflowentrypusher/json

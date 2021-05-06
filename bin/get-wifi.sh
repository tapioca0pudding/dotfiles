#!/bin/bash -e
# Ref. https://qiita.com/ktrysmt/items/5691e6a0c8318cbb1be4

if type networksetup > /dev/null 2>&1; then
  WIFI_POWER=$(networksetup -getairportpower en0 | awk -F ": " '{print $2}')
  WIFI_NAME=$(networksetup -getairportnetwork en0 | awk -F ": " '{print $2}')

  if [ "$WIFI_POWER" = "On" ];then
    #echo "⚡︎" \
    #  "$WIFI_NAME"
    echo "$WIFI_NAME"
  else
    echo "OFFLINE"
  fi
fi

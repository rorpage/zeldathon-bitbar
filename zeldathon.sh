#!/bin/bash
game=$(curl -s https://api.twitch.tv/kraken/channels/supermcgamer -H 'client-id:jzkbprff40iqj646a697cyrvl0zt2m6' | /usr/local/bin/jq -r '.game')
donations=$(curl -s https://zeldathon.net/api/Kinstone/total | /usr/local/bin/jq -r '.[0]')

echo "$game | color=purple"
echo "---"
echo "Zeldathon | href=https://zeldathon.net"
echo "---"
echo "Watch on Twitch | href=https://twitch.tv/supermcgamer"
echo "Schedule | href=https://zeldathon.net/schedule"
echo "---"
echo $donations
exit 0

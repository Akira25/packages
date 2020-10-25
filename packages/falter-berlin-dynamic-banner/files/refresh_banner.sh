#!/bin/sh

# Get dynamic information and construct a new banner. This script 

HOSTNAME=$(uci get system.@system[0].hostname)".olsr"
IPADDR=$(uci get network.wireless0.ipaddr)
UPTIME=$(uptime | cut  -d' ' -f4-5 | cut -d',' -f1)
FREEFL=$(df -h | grep " /overlay" | sed -E -e s/[[:space:]]+/\;/g | cut -d';' -f4 )
SYS_LOAD=$(uptime | rev.sh | cut -d':' -f1 | rev.sh | sed -E -e s/[[:space:]]+/\/ )
CLIENTS=$(wc -l /tmp/dhcp.leases | cut -d' ' -f1)

BANNER="/ezc/banner.bak"
DYN_BANNER="/tmp/banner"

cat /etc/banner.bak > "$DYN_BANNER"
printf \
" Host........................: $HOSTNAME
 IP-Address..................: $IPADDR
 Uptime......................: $UPTIME
 Free flash..................: $FREEFL
 Average load (1m, 5m, 15m)..: $SYS_LOAD
 DHCP-Clients................: $CLIENTS

 
" >> "DYN_$BANNER"
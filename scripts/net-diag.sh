#!/usr/bin/env bash
# Quick layered diagnostic for Linux. Usage: ./net-diag.sh [target-hostname]
T="${1:-google.com}"
GW=$(ip route | awk '/default/ {print $3; exit}')
echo "== 1. Interface/IP =="; ip -brief a
echo "== 2. Default gateway: ${GW:-NONE} =="
[ -n "$GW" ] && ping -c 2 -W 2 "$GW" >/dev/null && echo "Gateway reachable" || echo "Gateway FAIL"
echo "== 3. External IP (8.8.8.8) =="
ping -c 2 -W 2 8.8.8.8 >/dev/null && echo "OK" || echo "FAIL (routing/internet)"
echo "== 4. DNS resolve $T =="
getent hosts "$T" && echo "DNS OK" || echo "DNS FAIL"
echo "== 5. HTTP check =="
curl -sI -m 5 "http://$T" | head -1 || echo "HTTP FAIL"

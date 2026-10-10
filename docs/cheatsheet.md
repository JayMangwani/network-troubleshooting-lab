# Command Cheat Sheet

| Task | Windows | Linux |
|---|---|---|
| Show IP config | `ipconfig /all` | `ip a`, `ip route` |
| Renew DHCP | `ipconfig /release` / `/renew` | `sudo dhclient -r && sudo dhclient` |
| Ping | `ping -n 4 host` | `ping -c 4 host` |
| Trace route | `tracert host` | `traceroute host` / `mtr host` |
| DNS lookup | `nslookup host` / `Resolve-DnsName host` | `dig host` / `resolvectl query host` |
| Flush DNS | `ipconfig /flushdns` | `sudo resolvectl flush-caches` |
| Test TCP port | `Test-NetConnection host -Port 80` | `nc -vz host 80` |
| Listening ports | `netstat -ano` | `ss -tulpn` |
| ARP table | `arp -a` | `ip neigh` |
| HTTP check | `curl.exe -v http://host` | `curl -v http://host` |
| Firewall rules | `Get-NetFirewallRule` | `sudo ufw status verbose` / `iptables -L -n` |
| Hosts file | `C:\Windows\System32\drivers\etc\hosts` | `/etc/hosts` |

## Reading results
- `Request timed out` = no reply (blocked or down). `Destination host unreachable` = a router said no route.
- `ping IP` works but `ping name` fails = DNS.
- `Test-NetConnection` TcpTestSucceeded False with ping OK = port blocked or service not listening.

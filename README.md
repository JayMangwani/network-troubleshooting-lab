# Network Troubleshooting Lab

Diagnosing IP configuration, DNS resolution, connectivity, and routing problems using standard Windows/Linux tools, and isolating failures at the device, DNS, network, and application level.

**Topics:** TCP/IP, DNS, DHCP, default gateway, firewall ports, Windows & Linux networking tools

## Setup
Two VMs on a VirtualBox Internal Network (or a Windows host + Linux VM): e.g. `win-client` and `linux-server` (Ubuntu with `apache2`/`nginx`, optionally `dnsmasq` for DHCP/DNS). Details in [docs/lab-setup.md](docs/lab-setup.md).

## Isolation model
| Layer | Test | Failure means |
|---|---|---|
| Device | `ping 127.0.0.1`, adapter state | NIC/driver/stack problem |
| IP config | `ipconfig /all`, `ip a` | bad IP, APIPA, wrong mask |
| Local network | `ping <gateway>` | cable/Wi-Fi/VLAN/gateway down |
| Routing | `tracert`, `traceroute`, `ip route` | path/default route issue |
| DNS | `nslookup`, `dig` | name resolution issue |
| Application | `Test-NetConnection -Port`, `curl -v`, `ss -tulpn` | service down or port blocked |

## Scenarios
See `scenarios/` (8 scenarios), tools cheat sheet in [docs/cheatsheet.md](docs/cheatsheet.md), automated checks in `scripts/`.

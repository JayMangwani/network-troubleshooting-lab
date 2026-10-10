# Scenario: Client has 169.254.x.x address

## Reproduce
On the DHCP server stop `dnsmasq`/DHCP, set client to automatic IP, `ipconfig /release && /renew`.

## Symptoms observed
`ipconfig /all` shows 169.254.x.x, no gateway. `ping` to anything fails.

## Isolation (which layer failed)
Device-level OK, IP config bad, DHCP unreachable.

## Resolution
Restore the DHCP service or assign a valid static IP temporarily; renew and verify lease.

## Evidence (add your own)
- [ ] Screenshot of the problem before the fix
- [ ] Screenshot/command output of the diagnostic step
- [ ] Screenshot/command output proving the fix worked
Save images in `evidence/` and link them here.

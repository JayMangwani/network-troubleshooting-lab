# Scenario: Ping IP works, ping name fails

## Reproduce
Set client DNS to an unused address (e.g. 192.168.50.99).

## Symptoms observed
`ping 8.8.8.8` OK, `ping google.com` fails, `nslookup google.com` times out.

## Isolation (which layer failed)
DNS-level failure (IP connectivity healthy).

## Resolution
Correct DNS server, `ipconfig /flushdns`, verify with `nslookup`.

## Evidence (add your own)
- [ ] Screenshot of the problem before the fix
- [ ] Screenshot/command output of the diagnostic step
- [ ] Screenshot/command output proving the fix worked
Save images in `evidence/` and link them here.

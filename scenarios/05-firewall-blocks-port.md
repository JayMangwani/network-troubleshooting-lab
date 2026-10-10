# Scenario: Ping works, website does not load

## Reproduce
On the Linux server `sudo ufw enable && sudo ufw deny 80/tcp` (allow 22 first if using SSH!).

## Symptoms observed
`ping` OK; `Test-NetConnection 192.168.50.10 -Port 80` -> False; `curl` times out; on server `ss -tulpn` shows apache listening.

## Isolation (which layer failed)
Application/port level: firewall block (service is up).

## Resolution
`sudo ufw allow 80/tcp`; retest the port and the page.

## Evidence (add your own)
- [ ] Screenshot of the problem before the fix
- [ ] Screenshot/command output of the diagnostic step
- [ ] Screenshot/command output proving the fix worked
Save images in `evidence/` and link them here.

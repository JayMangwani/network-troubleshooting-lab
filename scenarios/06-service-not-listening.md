# Scenario: Port refused (service down)

## Reproduce
`sudo systemctl stop apache2`.

## Symptoms observed
`curl` gives `Connection refused` (fast fail, unlike a firewall timeout); `ss -tulpn` shows nothing on :80; `systemctl status apache2` inactive.

## Isolation (which layer failed)
Application level: service stopped. Note refused vs timeout distinction.

## Resolution
`sudo systemctl start apache2`; enable on boot; check `journalctl -u apache2`.

## Evidence (add your own)
- [ ] Screenshot of the problem before the fix
- [ ] Screenshot/command output of the diagnostic step
- [ ] Screenshot/command output proving the fix worked
Save images in `evidence/` and link them here.

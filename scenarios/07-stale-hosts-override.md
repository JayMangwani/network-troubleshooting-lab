# Scenario: Name resolves to the wrong IP

## Reproduce
Add `192.168.50.77 app.lab` to the client's hosts file.

## Symptoms observed
`nslookup app.lab` returns the correct IP but `ping app.lab` hits the wrong one (hosts file wins over DNS).

## Isolation (which layer failed)
Name resolution: local override.

## Resolution
Remove the hosts entry, `ipconfig /flushdns`, retest.

## Evidence (add your own)
- [ ] Screenshot of the problem before the fix
- [ ] Screenshot/command output of the diagnostic step
- [ ] Screenshot/command output proving the fix worked
Save images in `evidence/` and link them here.

# Scenario: Local OK, remote unreachable

## Reproduce
Change the client default gateway to a non-existent address.

## Symptoms observed
Server on same subnet reachable; external IP not; `tracert` fails at hop 1; `ip route`/`route print` shows wrong gateway.

## Isolation (which layer failed)
Routing: incorrect default gateway.

## Resolution
Fix the gateway and verify with `tracert`.

## Evidence (add your own)
- [ ] Screenshot of the problem before the fix
- [ ] Screenshot/command output of the diagnostic step
- [ ] Screenshot/command output proving the fix worked
Save images in `evidence/` and link them here.

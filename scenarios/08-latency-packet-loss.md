# Scenario: Slow/laggy network

## Reproduce
On Linux: `sudo tc qdisc add dev enp0s3 root netem delay 200ms loss 10%`; remove with `sudo tc qdisc del dev enp0s3 root`.

## Symptoms observed
`ping -n 50` shows high RTT and ~10% loss; `pathping`/`mtr` helps locate the hop.

## Isolation (which layer failed)
Network quality: latency/packet loss on the path.

## Resolution
Remove the impairment (in real life: check cabling, Wi-Fi signal, congested link, escalate to ISP/network team with `mtr` output).

## Evidence (add your own)
- [ ] Screenshot of the problem before the fix
- [ ] Screenshot/command output of the diagnostic step
- [ ] Screenshot/command output proving the fix worked
Save images in `evidence/` and link them here.

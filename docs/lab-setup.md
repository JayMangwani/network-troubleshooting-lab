# Lab Setup
1. VirtualBox, two VMs, adapter 1 = Internal Network `netlab`.
2. Linux server static IP (Ubuntu netplan example):
```yaml
network:
  version: 2
  ethernets:
    enp0s3:
      addresses: [192.168.50.10/24]
      routes: [{to: default, via: 192.168.50.1}]
      nameservers: {addresses: [192.168.50.10]}
```
3. Install services: `sudo apt install apache2 dnsmasq -y`. Configure `dnsmasq` with `address=/app.lab/192.168.50.10` for a local DNS record.
4. Windows client static `192.168.50.20/24`, DNS `192.168.50.10`.
5. Add a second NAT adapter if you want real internet tests.
6. Snapshot both VMs as `baseline`.

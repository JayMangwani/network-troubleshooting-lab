# Quick layered diagnostic for Windows. Usage: .\net-diag.ps1 -Target google.com
param([string]$Target = "google.com")
Write-Host "== 1. IP config ==" -ForegroundColor Cyan
Get-NetIPConfiguration | Format-List InterfaceAlias,IPv4Address,IPv4DefaultGateway,DNSServer
$gw = (Get-NetRoute -DestinationPrefix "0.0.0.0/0" | Select-Object -First 1).NextHop
Write-Host "== 2. Gateway ($gw) ==" -ForegroundColor Cyan
if ($gw) { Test-Connection $gw -Count 2 -Quiet } else { "No default gateway" }
Write-Host "== 3. External IP 8.8.8.8 ==" -ForegroundColor Cyan
Test-Connection 8.8.8.8 -Count 2 -Quiet
Write-Host "== 4. DNS ($Target) ==" -ForegroundColor Cyan
try { Resolve-DnsName $Target -ErrorAction Stop | Select-Object -First 2 } catch { "DNS FAIL" }
Write-Host "== 5. TCP 443 ==" -ForegroundColor Cyan
Test-NetConnection $Target -Port 443 | Select-Object ComputerName,RemotePort,TcpTestSucceeded

# Pausing Script Execution

## Start-Sleep

```PowerShell
Get-Service | where status -eq running
Start-Sleep -Seconds 5
Get-Service | where status -eq stopped
```

## Read-Host
```PowerShell
Get-Service | where status -eq running
Read-Host
Get-Service | where status -eq stopped
```
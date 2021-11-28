# PowerShell Function

- Function name - try giving verb-nown realted to what function does

runningservices.ps1
```PowerShell
function Get-RunningServices 
{
  Get-Service | where status -eq running
}
```

- dotnet sourcing - to retian in the memory
```PowerShell
. .\runningservices.ps1
```

```PowerShell
Get-RunningSer#PressTab
Get-RunningServices
```
# Script Execution Policy Level

| | |
|-|-|
| Restricted | No Scripts are allowed to run |
| AllSigned | Scripts can be run only if they are digitally signed (Code signing certificate is used) |
| RemoteSigned | Scripts that are downloaded can only be run if they are digitally signed |
| Unrestricted | All scripts can be run, but a confirmation prompt appears when running unsignedscripts that are downloaded |
| Bypass | All scripts run without prompts |


- Powershell ExecutionPolicy by Default is `Restricted`. Prevents against malicious activities/unwanted script execution

Change execution policy,
Powershell CMDlet: `Set-ExecutionPoliy`


```PowerShell
Get-ExecutionPolicy
Set-ExecutionPolicy Unrestricted
Get-ExecutionPolicy
```

Skip remote signing
```PowerShell
Unblock-File -Path 
```

Group Policy
```
gpedit.msc
```

Computer Configuration > Administrative Templates > Windows Components > Windows PowerShell > Turn on Script Execution > Execution Policy











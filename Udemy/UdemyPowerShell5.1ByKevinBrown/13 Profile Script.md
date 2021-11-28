# Profile Scripts

- Are processed by the host application
- Load automatically each time the host application starts

- Use profile scripts to customize the windows PowerShell environment
  - Create aliases
  - Set variables

- Profile script customizations are specific to the local computer

## Profile Script Locations

| Users affected | Profile script locations |
|-|-|
| All users | $pshome (`C:\Windows\System32\WindowsPowerShell\v1.0`) |
| Current user | $profile (`C:\Users\username\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`) |


Create Profile script for current user
```PowerShell
New-Item -path $profile -Item-type file -force
```

Create profile script which will load everytime user opens a powershell session
```ps1
New-Alias svc Get-Service
$proc = get-process
$host.ui.RawI.BackgroundColor = "green"
```

Note: There is a separate profile script for PowerShell ISE, you can use $profile variable from PowerShell ISE to create profile script for PowerShell ISE.


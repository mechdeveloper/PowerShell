# Running unsupported CMD commands in PowerShell

Permissions

cmd
```cmd
icacls c:\test /grant "backup operators":(f)(ci)(oi)
```

PowerShell
```PowerShell
icacls --% c:\test /grant "backup operators":(f)(ci)(oi)
```

`--%` stop powershell processing, process as windows command 

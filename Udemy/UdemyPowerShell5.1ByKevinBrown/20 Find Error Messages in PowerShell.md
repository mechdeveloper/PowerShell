# Understanding $Error

- You can view previous error messages

```PowerShell
$Error
```

```PowerShell
Ger-Service -Name workstation
Ger-Service: The term 'Ger-Service' is not recognized as a name of a cmdlet, function, script file, or executable program.

Get-Processess
Get-Processess: The term 'Get-Processess' is not recognized as a name of a cmdlet, function, script file, or executable program.
```

Shows both error
```PowerShell
$error
```

Shows most recent error
```PowerShell
$error[0]
```

You can go back in error history
```PowerShell
$error[1]
```
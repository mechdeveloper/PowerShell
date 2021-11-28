# Object Members

- Object Members include 
  - Properties
  - Methods 
  - Events
- Run a command that produces and object, and pipe that object to `Get-Member` to see a list of members
- `Get-Member` is a discovery tool, similar to `Help`, that can help you learn to use shell

```PowerShell
Get-Service | Get-Member
```
or
```PowerShell
Get-Service | gm
```

`gm` is an alias for `Get-Member`
```PowerShell
Get-Alias gm
```

# Format Table Types

```PowerShell
Get-Process
```

```PowerShell
Get-Process | More
```

```PowerShell
Get-Process | Format-List
```

```PowerShell
Get-Process | Format-Table
```

```PowerShell
Get-Process | Format-Wide
```

```PowerShell
Get-Process | Format-Wide -Column 6
```

# Object Sorting

By default `Get-Service` sorts alphabatically for the `Name` property

```PowerShell
Get-Service 
```

```PowerShell
Get-Service | Sort-Object -Property Name -Descending | more
```
or
```PowerShell
Get-Service | sort name -Descending | more
```

- `sort` is alias for `Sort-Object`
- Best Practice is not to use alias when creatig scripts

```PowerShell
Get-Service | sort status,name | more
```

```PowerShell
Get-Service | sort status,name -Descending | more
```

```PowerShell
Get-Service | Sort-Object status,name | fw -GroupBy status
```

# Selecting Objects

```PowerShell
Get-Process | Sort-Object -Property cpu 
```

```PowerShell
Get-Process | Sort-Object -Property cpu -Descending
```

```PowerShell
Get-Process | Sort-Object -Property cpu -Descending | Select-Object -First 10
```

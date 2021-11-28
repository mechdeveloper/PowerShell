# Variables

- Variables are objects that gets stored in memory
- Variables can greatly simplify scripting
- Name your variable to what it does

Example 
```PowerShell
Get-Service w32time

$time = Get-Service w32time

$time
```

Variable Types 

|  |  |
|--|--|
| String | "one or more words wrapped in quotes" |
| Int (Integer) | A number wihtout decimal |
| Double | A number with a decimal |
| DateTime | January 1, 2020 09:00AM |
| Bool (Boolean) | $True or $False |

```PowerShell
Get-Date -#Press Tab
```

```PowerShell
$date = Get-Date
$date
$date.hour
$date.Minute
$date.Day
$date.AddDays(30)
$date.AddDays(-30)
```

# Challenge

1. Create a variable name $IP that will generate the local ip configuration for the computer
2. Varify that $IP variable functions correctly

Hint: Not the ipconfig command

```PowerShell
$IP=(Get-NetIPAddress -InterfaceAlias Wi-Fi -AddressFamily IPv4).IPAddress
$IP
```


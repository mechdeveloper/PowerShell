# Script Constructs 

## ForEach 

- Loop through every item in a collection

```PowerShell
$proc = Get-Process

foreach ($indprocess in $proc)
{
    $indprocess.ProcessName
}
```

## ElseIf

```PowerShell
$SvcName = "Print Spooler"
$Service = Get-Service -display $SvcName 
if (-Not $Service) {$SvcName + " is not installed on this computer."}
ElseIf ($Service.Status -eq "Running") {$SvcName + " is working." }
ElseIf ($Service.Status -eq "Stopped") {$SvcName + " is not working." }
Else {$SvcName + "Service Error."}
```

## Try and Catch

```PowerShell
$wsvc = "get-service wirelesssvc"
get-service -name $wsvc
```

```PowerShell
$wsvc = "get-service wirelesssvc"
try {get-service -name $wsvc -ErrorAction Stop}
catch {write-host "Service is not Installed"}
finally {write-host "Error"}
```

```PowerShell
$wsvc = "get-service wirelesssvc"
try {get-service -name $wsvc -ErrorAction SilentlyContinue}
catch {write-host "Service is not Installed"}
finally {write-host "Error"}
```

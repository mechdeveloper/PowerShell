$SvcName = "Print Spooler"
$Service = Get-Service -display $SvcName 
if (-Not $Service) {$SvcName + " is not installed on this computer."}
ElseIf ($Service.Status -eq "Running") {$SvcName + " is working." }
ElseIf ($Service.Status -eq "Stopped") {$SvcName + " is not working." }
Else {$SvcName + "Service Error."}
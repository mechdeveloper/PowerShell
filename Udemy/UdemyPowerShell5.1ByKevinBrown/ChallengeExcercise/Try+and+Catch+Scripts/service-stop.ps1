$WSvc= "get-service wirelessSvc"

Try {get-service -name $WSvc -ErrorAction Stop}
Catch {Write-Host "Service Is Not Installed"}
Finally {}
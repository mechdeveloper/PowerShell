$WSvc= "get-service wirelessSvc"

Try {get-service -name $WSvc -ErrorAction SilentlyContinue}
Catch {Write-Host "Service Is Not Installed"}
Finally {}
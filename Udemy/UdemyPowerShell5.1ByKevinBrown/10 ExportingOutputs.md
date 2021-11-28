# Exporting Outputs

```PowerShell
# Create an output directory
New-Item -ItemType Directory C:\output

Get-ChildItem C:\

# Export CSV
Get-Service | Where status -eq 'running' | Export-Csv C:\output\runningservices.csv

Get-ChildItem C:\output\

# Export text file
Get-Service | Out-File C:\output\allservices.txt

# Send output to printer
Get-Service | Out-Printer

Remove-ChildItem C:\output\ -Recurse
```
# Using Script Paramters

- Create PowerShell Script `Hello_Script.ps1`
  ```PowerShell
  Write-Output "Hello World"
  ```

- Execute Script
  ```PowerShell
  .\hello_Script.ps1
  ```

- Use Parameter in your script `Hello_Script.ps1`
  ```PowerShell
  param ($Name)
  Write-Output "Hello $Name"
  ```

- Execute Script with parameter
  ```PowerShell
  .\Hello_Script.ps1 -Name Bob
  ```

- Another Example `Service_Script.ps1`
  ```PowerShell
  param ($ServiceName)
  get-service $Servicename
  Write-Output "Service $ServiceName"
  ```

  Execute Script
  ```PowerShell
  .\Service_Script.ps1 -ServiceName wlansvc
  ```
  ```PowerShell
  .\Service_Script.ps1 -ServiceName wsearch
  ```

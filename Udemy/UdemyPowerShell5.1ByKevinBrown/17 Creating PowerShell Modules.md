# Creating PowerShell Module

- Function or Body of a script and have it loaded in powrshell
- Save as a module, saveas `.psm1`
- PowerShell modules are located at following location
  ```
  C:\Windows\System32\WindowsPowerShell\v1.0\Modules
  ```
- Create a New Folder `RunningServices` and paste following script

  Get-RunningServices.psm1
  ```PowerShell
  function Get-RunningServices 
  {
    Get-Service | where status -eq running
  }
  ```

- Import and use module
  ```PowerShell
  Import-Module RunningServices
  Get-Module RunningServices
  Get-RunningSer#Press Tab
  ```


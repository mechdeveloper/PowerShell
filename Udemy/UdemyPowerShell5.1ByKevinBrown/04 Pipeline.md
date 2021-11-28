# Pipeline Syntax

- Windows PowerShell runs commands in a pipeline
- Each console command line is a pipeline
- Commands are separated by a `|` pipe character 
- Commands execute from left to right
- Output of each command is piped (passed) to the next
- Output of last command in the pipeline is what appears on the screen
- Piped commands typically follow the pattern
    ```
    Get | Set, Get | Where, or Select | Set
    ```

Example
```PowerShell
New-ADUser -Name 'Bob Ross' -Path 'ou=sales,dc=contoso,dc=com'
Get-ADUser 'Bob Ross' 
Get-ADUser 'Bob Ross' | Set-ADUser -City 'Las Vegas'
Get-ADUser 'Bob Ross' -Property City
```
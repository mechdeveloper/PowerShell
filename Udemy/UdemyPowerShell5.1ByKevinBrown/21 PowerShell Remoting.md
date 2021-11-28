# PowerShell Remoting

- Source Computer
- Target Computer

- On Target Computer
  ```PowerShell
  Enable-PSRemoting
  ```
  
  - Createes Firewall Exeception
  - Enables listener ports 5985/5986
    - WS-MAN over HTTP/HTTPS
  - Automatically Starts the `Windows Remote Management` Service
    
- Using Source Computer now we can connect to Target Computer
  ```PowerShell
  Enter-PSSession -Computername <TargetComputerName>
  ```

- To exit from remote session
  ```PowerShell
  Exit-PSSession
  ```

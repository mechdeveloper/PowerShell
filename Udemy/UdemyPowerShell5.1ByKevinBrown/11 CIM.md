# CIM 

- Connect to hardware or software on computer
  - WMI (Older/Legacy)
    - Uses DCOM
      - requires RPC
  - CIM (Newer)
    - can use following
      - DCOM
      - HTTP
      - WS-MAN
    - Requires
      - WinRM

```PowerShell
Get-CimInstance -class Win32_PnPSignedDriver | ogv
```

```PowerShell
Get-CimInstance -class Win32_BIOS
```

```PowerShell
Get-CimInstance -class Win32_LogicalDisk
```

```PowerShell
Get-CimInstance -class Win32_LogicalDisk -filter 'drivetype=3'
```

```PowerShell
Get-CimInstance -class Win32_Process -Filter "name='calculator.exe'" | Invoke-CimMethod -MethodName Terminate
```

# Array and Array Lists

## Array
- An array contains multiple values or objects 
- Values can be assigned by:
  - Providing a list
    ```PowerShell
    $computers = "RTS-DC1","RTS-SRV1","RTS-CL1"
    ```
- An array is a fixed size and can not be modified
  ```PowerShell
  $computers.Add('RTS-CL2')
  Exception calling "Add" with "1" argument(s): "Collection was of a fixed size."
  ```

## Array List 
- An array list is not a fixed size and can be modified
- Example
  ```PowerShell
  [System.Collections.ArrayList]$computers="RTS-DC1","RTS-SRV1","RTS-CL1"
  ```
- Add a value to array list
  ```PowerShell
  $computers.Add('RTS-CL2')
  ```
- Remove a vaule from array list
  ```PowerShell
  $computers.Remove('RTS-CL1')
  ```


Array
```PowerShell
$PROC = "winlogon", "WININIT"
$PROC
Get-Process $PROC
```

ArrayList
```PowerShell
[System.Collections.ArrayList]$PROC = "winlogon", "WININIT"
$PROC.Add("wlanext")
$PROC
Get-Process $PROC
```
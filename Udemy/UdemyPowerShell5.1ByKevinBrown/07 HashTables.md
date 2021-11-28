# Hash Table

```PowerShell
Get-Process | Select-Object Name, Id, @{n='virtualmemory';e={$psitem.vm}}, @{n='pagedmemory';e={$psitem.pm}}
```

```PowerShell
Get-Process | Select-Object Name, Id, @{n='virtualmemory(MB)';e={$psitem.vm/1MB}}, @{n='pagedmemory(MB)';e={$psitem.pm/1MB}}
```

```PowerShell
Get-Process | Select-Object Name, Id, @{n='virtualmemory(MB)';e={$psitem.vm/1MB}}, @{n='pagedmemory(MB)';e={$psitem.pm/1MB}}
```

```PowerShell
Get-Process | Select-Object Name, Id, @{n='virtualmemory(MB)';e={'{0:n2}' -f ($psitem.vm/1MB)}}, @{n='pagedmemory(MB)';e={'{0:n2}' -f ($psitem.pm/1MB)}}
```
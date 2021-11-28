# Operators

| Comparision Type | Case-insensitive Operator | Case-sensitive Operator |
|--|--|--|
| Equal to | -eq | -ceq |
| Not Equal to | -ne | -cne |
| Greater than | -gt | -cgt |
| Less than | -lt | -clt |
| Greater than or equal to | -ge | -cge |
| Less than or equal to | -le | -cle |
| Wildcard use | -like | -clike |

```PowerShell
'HelloWorld' -eq 'helloworld' 
# True
```

```PowerShell
'HelloWorld' -ceq 'helloword' 
# False
```

```PowerShell
Get-Service | Where name -like *win*
```

```PowerShell
Get-Service | Where name -like *app*
```

```PowerShell
Get-Service | Where name -like app*
```

```PowerShell
Get-Service | Where status -eq 'running'
```
or
```PowerShell
Get-Service | Where {$psitem.status -eq 'running'}
```
or
```PowerShell
Get-Service | Where {$_.status -eq 'running'}
```
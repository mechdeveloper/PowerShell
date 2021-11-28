# Lab setup 
<https://RTSnetworking.com/demo>

# Windows Powershell and Windows Powershell ISE

# Console Settings

# Determine PowerShell Version

```powershell
$psverisontable
```

Output
```powershell
$psversiontable

Name                           Value
----                           -----
PSVersion                      5.1.19041.1320
PSEdition                      Desktop
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
BuildVersion                   10.0.19041.1320
CLRVersion                     4.0.30319.42000
WSManStackVersion              3.0
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1
```

__Change powershell version__

>Note: This will be the version change on current session and will be revereted back to the installed version of powershell once console is restarted. You donot need to explicitly switch back.

```powershell
powershell -version 3
```

```powershell
powershell -verison 2
```

# PowerShell Version 6

- Moved from .Net Framework (Microsoft Only) to .Net Core (Vendor Neutral)
- Support for side-by-side installations
- Renamed `powershell.exe` to `pwsh.exe`
- Backwards compatilbity with Windows PowerShell (PowerShell 5.1 commands will run the same in PowerShell 6)
- Microsoft and Non-Microsoft operating system support:
  - Ubuntu 4.04, 16.04, and 17.04
  - Debian 8.7+, and 9
  - CentOS 7
  - Red Hat Enterprise Linux 7
  - OpenSUSE 42.2
  - Fedora 25, 26

# Install PowerShell version 6


<https://github.com/powershell/powershell>



# PowerShell vs Command Prompt

CMD.exe
- No Uniformity
  - ipconfig /all
  - ping -t
  - DISKPART (utility)



PowerShell 
- modules 
- cmdlets
- verb-nown (uniformity)
  - `get-service`
  - `get-process`

# Paramters: Required vs. Optional

```powershell
Get-Service
   [[-Name] <String[]>] # Required Paramter --> invisible
   [-ComputerName <String[]>] # Optional Paramter
   [-DependentServices]
   [-RequiredServices]
   [-Include <String[]>]
   [-Exclude <String[]>]
   [<CommonParameters>]
```

```Powershell
Get-EventLog
   [-LogName] <String>  # Required Paramter --> Prompted
   [-ComputerName <String[]>] 
   [-Newest <Int32>]
   [-After <DateTime>]
   [-Before <DateTime>]
   [-UserName <String[]>]
   [[-InstanceId] <Int64[]>] # Required Parameter
   [-Index <Int32[]>]
   [-EntryType <String[]>]
   [-Source <String[]>]
   [-Message <String>]
   [-AsBaseObject] # Optional Paramter
   [<CommonParameters>]
```

Example

```powershell
Get-Service
```

```powershell
Get-Service -name wserach
```

```powershell
# will prompt for LogName 
Get-EventLog
```

```powershell
Get-Help Get-Service
```

# Tab Completion

- Eleminate typos
- Get recommendations

```Powershell
Get-Ser#Press Tab
```

```Powershell
Get-Service -Name #Press Tab
```

```Powershell
Get-Service -Name ws#Press Tab
Get-Service -Name wsearch
```

```Powershell
*-Service #Press Tab
```

```Powershell
*-Se#Press Tab
```

```Powershell
Get-Service -#Press Tab
```

# Using `Get-Help`

```Powershell
Get-Help Get-ChildItem
```

```Powershell
Get-Help Stop-Process -Examples
```

```Powershell
Get-Help Stop-Process -Online
```

```Powershell
Get-Help Stop-Process -ShowWindow
```

```Powershell
Get-Help Stop-Process -ShowWindow
```

```Powershell
Get-Help *Process*
```

```Powershell
Get-Help *blue*
```

>Note: There are different syntax for same commands, if you try to mix and match parameters and swtiches b/w syntaxes they might not be available and throw error for eg command `Get-EventLog -LogName Application -List` will throw error `Get-EventLog : Parameter set cannot be resolved using the specified named parameters.` as -LogName and -List are not part of same syntax but are part of different syntax of the `Get-EventLog` command. We can check syntaxes with get-help command.


>Note: BestPractice always use parameters with names

# About file

```PowerShell
Get-Help about_EventLogs
```

# Update help

```PowerShell
Update-Help # Once in 24 hrs
```

```PowerShell
Update-Help -Force 
```

```PowerShell
Save-Help -PSPath C:\PS-Help
```

# Using `Get-Command`

```PowerShell
Get-Command Get-Ev*
```

```PowerShell
Get-Command Get-*
```

```PowerShell
Get-Command Set-e*
```

```PowerShell
Get-Command Set-*log*
```

```PowerShell
Get-Command *-EventLog
```

# Using `Find` Command

```PowerShell
Find-Module *ADDS* #Uses Nuget to serach on internet
```

```PowerShell
Install-Module iisadministration #Requires Admin Rights
```

# Alias in PowerShell

```PowerShell
Get-Alias
```

```PowerShell
Get-Alias d*
```

# Create Alias in PowerShell

```PowerShell
New-Alias -Name svc -value get-service
```
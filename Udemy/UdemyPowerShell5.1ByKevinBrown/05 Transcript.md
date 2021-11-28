# Managing Transcript Settings

```PowerShell
Start-Transcript

Get-Service

Get-Process

Stop-Transcript
```


You can also turn on powershell transcription using local group policy editor, this can also be done at active direcotory level

```
gpedit.msc
```

Computer Confiuration > Administrative Templates > Windows Components > Windows Powershell > Turn on PowerShell Transcription

You can also specify output directory 
`\\Server\Share`

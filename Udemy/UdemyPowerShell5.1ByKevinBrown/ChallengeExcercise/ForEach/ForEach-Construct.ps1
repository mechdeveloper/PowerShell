$Proc = Get-Process
ForEach ($Ind in $Proc)
{
$Ind.ProcessName
}

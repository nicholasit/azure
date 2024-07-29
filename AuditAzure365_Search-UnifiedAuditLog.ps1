$OutputFile = "c:\temp\log_30days.csv"
$Today = Get-Date -Date (Get-Date -Format “yyyy-MM-dd”)
$intDays = 30
For ($i=0; $i -le $intDays; $i++){
  For ($j=23; $j -ge 0; $j--){
    $StartDate = ($Today.AddDays(-$i)).AddHours($j)
    $EndDate = ($Today.AddDays(-$i)).AddHours($j + 1)
    $Audit = Search-UnifiedAuditLog -StartDate $StartDate -EndDate $EndDate
    $Audit | Export-Csv $OutputFile -NoTypeInformation -Append
    Write-Host $StartDate `t $Audit.Count}}
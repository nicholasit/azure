Get-TimeZone -ListAvailable
Get-TimeZone -ListAvailable | where ({$_.Id -like "Pacific*"})
Set-TimeZone -Id "Pacific Standard Time"
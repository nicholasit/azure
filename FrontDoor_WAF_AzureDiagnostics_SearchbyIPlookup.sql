AzureDiagnostics
| where ResourceProvider == "MICROSOFT.NETWORK" and Category == "FrontdoorWebApplicationFirewallLog"
| where action_s == "Block"
| where clientIP_s == "IP_HERE"
| summarize RequestCount = count() by ClientIP = clientIP_s, UserAgent = userAgent_s, RuleName = ruleName_s ,Resource
| order by RequestCount desc
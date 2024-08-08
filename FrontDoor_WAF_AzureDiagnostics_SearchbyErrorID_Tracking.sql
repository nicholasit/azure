AzureDiagnostics
| where trackingReference_s == 'INSERT_ID_HERE'
| project TimeGenerated, Category, ruleName_s, action_s, trackingReference_s
| order by TimeGenerated desc
#Steps before start wizard for Windows Virtual Desktop
New-RdsTenant -Name AZR_RDS -AadTenantId XXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX -AzureSubscriptionId XXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
New-RdsRoleAssignment -TenantName AZR_RDS_FIBRA -SignInName admin@tenant.onmicrosoft.com -RoleDefinitionName "RDS Owner"
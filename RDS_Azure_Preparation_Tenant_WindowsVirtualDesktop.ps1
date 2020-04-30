Install-Module -Name Microsoft.RDInfra.RDPowerShell -Force
Import-Module -Name Microsoft.RDInfra.RDPowerShell
Install-Module -Name Az -AllowClobber -Force
Import-Module -Name Az

#Steps before start wizard for Windows Virtual Desktop
New-RdsTenant -Name AZR_RDS -AadTenantId XXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX -AzureSubscriptionId XXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
New-RdsRoleAssignment -TenantName AZR_RDS_FIBRA -SignInName admin@tenant.onmicrosoft.com -RoleDefinitionName "RDS Owner"
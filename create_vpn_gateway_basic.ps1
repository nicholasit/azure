$location = 'eastus'
$resourceGroup = 'rg-vnethub-marshalls-prod-eastus'
$vnetName = 'vnethub-marshalls-prod-eastus-001'
$publicipName = 'pip-vgw-marshalls-prod-southbr-001'
$gatewayName = 'vgw-marshalls-prod-eastus-001'

$vnet = Get-AzVirtualNetwork -ResourceGroupName $resourceGroup -Name $vnetName
$subnet = Get-AzVirtualNetworkSubnetConfig -Name 'GatewaySubnet' -VirtualNetwork $vnet
$publicip = New-AzPublicIpAddress -Name $publicipName -ResourceGroupName $resourceGroup -Location $location -Sku Basic -AllocationMethod Dynamic
$ipconfig = New-AzVirtualNetworkGatewayIpConfig -Name 'GWIPConfig-01' -SubnetId $subnet.Id -PublicIpAddressId $publicip.Id
New-AzVirtualNetworkGateway -Name $gatewayName -ResourceGroupName $resourceGroup -Location $location -IpConfigurations $ipconfig -GatewayType 'VPN' -VpnType 'RouteBased' -GatewaySku 'Basic'
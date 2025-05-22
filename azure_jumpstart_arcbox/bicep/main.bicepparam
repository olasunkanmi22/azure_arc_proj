$parameters = @{
    sshRSAPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5s9UaCJicrT6vIvM+2Vt3R1CbUaR5m+EIgFbz/6gvb+sAiJaReHtuasoQcWBCOzThguv+za0FDykXl1HpcPNbvo6i/102J1k+CJ41Xcua1E0zLO2wvk6edipISEIPSqXgGiWK+u710xQzf6qoZyf5yzI6OO9FOu65ggw/z4nkD8e+d38TeXYKFXT60p6R3EYqI3ZYipu29eUnZmqwZyzQ5oAmrrU/VvMZ4Ui2bIctT+GCsd96e3xBwhwv9hHZqNWS941mWoebBxTY9pV28zqMU3jidJOADH++ymSZdC5SQsmNmDYXf5Aj+hXZdMbq6Qt+YsR+mVI4X2bAkg23wxYY9t95SPS8O7UQnW2Fuw/9M4YazkY8yoZzWAf9vrm93n9xPpyBShS409ewXPUsMuczKgUWVKi+lQCqZhIapNC5AgWTclV3iBgS00kRTy2vURt3wtVvb3XFPVi9oznfrSAgn7eWg7noHpdIeuoJaa8MuawsmSH32wlPL/9X27nPUNQZWluIFvs0+rZ7DoJZyHHAnRmljq5OS2vcQRxumjyk1leJJqtNVMIBLY/T3xch9GvemgUvndXUj0/U9ceBwa8Hw2WgArP14BEnKsC7JuNiyNeDfvqtcn1BZSZZFynkGH+D10ftOaZ6tDPiPlzTTHwKwgu6xmrBPJrWvvEcXWIymQ== azuread\praiseugwunna@RIS-DEX-033"
    tenantId = "0b60fed4-5fc9-409d-95f2-271114f4c86f"
    windowsAdminUsername = "arcdemo"
    windowsAdminPassword = "password@123"
    logAnalyticsWorkspaceName = "arcdemo"
    flavor = "ITPro"
    deployBastion = $false
    vmAutologon = $true
    resourceTags = @{}  # Modify as needed
}

New-AzResourceGroupDeployment `
    -ResourceGroupName "arcproj" `
    -TemplateFile "main.bicep" `
    -TemplateParameterObject $parameters

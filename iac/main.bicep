
param location string
param appServicePlanName string
param name string
param sqlname string
param storagename string
param adminUser string
@secure()
param adminPassword string

module appService 'modules/appService.bicep' = {
  name: 'deployAppService'
  params: {
    name: name
    location: location
    appServicePlanName: appServicePlanName
  }
}

module sqlServer 'modules/sqlServer.bicep' = {
  name: 'deploySql'
  params: {
    name: sqlname
    location: location
    adminUser: adminUser
    adminPassword: adminPassword
  }
}

module storageAccount 'modules/storageAccount.bicep' = {
  name: 'deployStorage'
  params: {
    name: storagename
    location: location
  }
}

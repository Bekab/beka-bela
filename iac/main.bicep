param environment string
param location string = resourceGroup().location

module appService 'modules/appService.bicep' = {
  name: 'deployAppService'
  params: {
    environment: environment
    location: location
  }
}

module sqlServer 'modules/sqlServer.bicep' = {
  name: 'deploySql'
  params: {
    environment: environment
    location: location
  }
}

module storageAccount 'modules/storageAccount.bicep' = {
  name: 'deployStorage'
  params: {
    environment: environment
    location: location
  }
}

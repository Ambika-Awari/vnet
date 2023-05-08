terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.18.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-mphx-dev-vnets"
  location = "West US 2"
}

// #app-pvt
// resource "azurerm_virtual_network" "vnet" {
//   name                = "vnet-mphx-qa-app-private-wu2"
//   location            = azurerm_resource_group.rg.location
//   resource_group_name = azurerm_resource_group.rg.name
//   address_space       = ["10.17.40.0/21"]
// }
// resource "azurerm_subnet" "sub-net" {
//   name                 = "subnet-mphx-qa-app-private-wu2"
//   resource_group_name  = azurerm_resource_group.rg.name
//   virtual_network_name = azurerm_virtual_network.vnet.name
//   address_prefixes     = ["10.17.40.0/28"]
// }
// #app-pub
// resource "azurerm_virtual_network" "app-vnet" {
//   name                = "vnet-mphx-qa-app-public-wu2"
//   location            = azurerm_resource_group.rg.location
//   resource_group_name = azurerm_resource_group.rg.name
//   address_space       = ["10.17.48.0/21"]
// }
// resource "azurerm_subnet" "app-sub-net" {
//   name                 = "subnet-mphx-qa-app-public-wu2"
//   resource_group_name  = azurerm_resource_group.rg.name
//   virtual_network_name = azurerm_virtual_network.app-vnet.name
//   address_prefixes     = ["10.17.48.0/28"]
// }
// #db
// resource "azurerm_virtual_network" "db-vnet" {
//   name                = "vnet-mphx-qa-db-private-wu2"
//   location            = azurerm_resource_group.rg.location
//   resource_group_name = azurerm_resource_group.rg.name
//   address_space       = ["10.17.32.0/21"]
// }
// resource "azurerm_subnet" "db-sub-net" {
//   name                 = "subnet-mphx-qa-db-private-wu2"
//   resource_group_name  = azurerm_resource_group.rg.name
//   virtual_network_name = azurerm_virtual_network.db-vnet.name
//   address_prefixes     = ["10.17.32.0/28"]
// }
// #infra
// resource "azurerm_virtual_network" "infra-vnet" {
//   name                = "vnet-mphx-qa-infra-private-wu2"
//   location            = azurerm_resource_group.rg.location
//   resource_group_name = azurerm_resource_group.rg.name
//   address_space       = ["10.17.0.0/23"]
// }
// resource "azurerm_subnet" "infra-sub-net" {
//   name                 = "subnet-mphx-qa-infra-private-wu2"
//   resource_group_name  = azurerm_resource_group.rg.name
//   virtual_network_name = azurerm_virtual_network.infra-vnet.name
//   address_prefixes     = ["10.17.0.16/29"]
// }
// #storage
// resource "azurerm_virtual_network" "stg-vnet" {
//   name                = "vnet-mphx-qa-storage-private-wu2"
//   location            = azurerm_resource_group.rg.location
//   resource_group_name = azurerm_resource_group.rg.name
//   address_space       = ["10.17.24.0/21"]
// }
// resource "azurerm_subnet" "stg-sub-net" {
//   name                 = "subnet-mphx-qa-storage-private-wu2"
//   resource_group_name  = azurerm_resource_group.rg.name
//   virtual_network_name = azurerm_virtual_network.stg-vnet.name
//   address_prefixes     = ["10.17.28.0/22"]
// }
// #web-pvt
// resource "azurerm_virtual_network" "web-pvt-vnet" {
//   name                = "vnet-mphx-qa-web-private-wu2"
//   location            = azurerm_resource_group.rg.location
//   resource_group_name = azurerm_resource_group.rg.name
//   address_space       = ["10.17.16.0/21"]
// }
// resource "azurerm_subnet" "web-pvt-sub-net" {
//   name                 = "subnet-mphx-qa-web-private-wu2"
//   resource_group_name  = azurerm_resource_group.rg.name
//   virtual_network_name = azurerm_virtual_network.web-pvt-vnet.name
//   address_prefixes     = ["10.17.20.0/22"]
// }
// #web-pub
// resource "azurerm_virtual_network" "web-pub-vnet" {
//   name                = "vnet-mphx-qa-web-public-wu2"
//   location            = azurerm_resource_group.rg.location
//   resource_group_name = azurerm_resource_group.rg.name
//   address_space       = ["10.17.8.0/21"]
// }
// resource "azurerm_subnet" "web-pub-sub-net" {
//   name                 = "subnet-mphx-qa-web-public-wu2"
//   resource_group_name  = azurerm_resource_group.rg.name
//   virtual_network_name = azurerm_virtual_network.web-pub-vnet.name
//   address_prefixes     = ["10.17.12.0/22"]
// }

#dev
// terraform {
//   required_providers {
//     azurerm = {
//       source  = "hashicorp/azurerm"
//       version = "=3.18.0"
//     }
//   }
// }

// provider "azurerm" {
//   features {}
// }

// resource "azurerm_resource_group" "rg" {
//   name     = "rg-mphx-vnets"
//   location = "West US 2"
// }
#app-pvt
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-mphx-dev-app-private-wu2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.16.232.0/21"]
}
resource "azurerm_subnet" "sub-net" {
  name                 = "subnet-mphx-dev-app-private-wu2"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.232.0/28"]
}
#app-pub
resource "azurerm_virtual_network" "app-vnet" {
  name                = "vnet-mphx-dev-app-public-wu2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.16.240.0/21"]
}
resource "azurerm_subnet" "app-sub-net" {
  name                 = "subnet-mphx-dev-app-public-wu2"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.app-vnet.name
  address_prefixes     = ["10.16.240.0/28"]
}
#db
resource "azurerm_virtual_network" "db-vnet" {
  name                = "vnet-mphx-dev-db-private-wu2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.16.224.0/21"]
}
resource "azurerm_subnet" "db-sub-net" {
  name                 = "subnet-mphx-dev-db-private-wu2"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.db-vnet.name
  address_prefixes     = ["10.16.224.0/28"]
}
#infra
resource "azurerm_virtual_network" "infra-vnet" {
  name                = "vnet-mphx-dev-infra-private-wu2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.16.192.0/23"]
}
resource "azurerm_subnet" "infra-sub-net" {
  name                 = "subnet-mphx-dev-infra-private-wu2"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.infra-vnet.name
  address_prefixes     = ["10.16.192.0/28"]
}
#storage
resource "azurerm_virtual_network" "stg-vnet" {
  name                = "vnet-mphx-dev-storage-private-wu2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.16.216.0/21"]
}
resource "azurerm_subnet" "stg-sub-net" {
  name                 = "subnet-mphx-dev-storage-private-wu2"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.stg-vnet.name
  address_prefixes     = ["10.16.216.0/28"]
}
#web-pvt
resource "azurerm_virtual_network" "web-pvt-vnet" {
  name                = "vnet-mphx-dev-web-private-wu2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.16.208.0/21"]
}
resource "azurerm_subnet" "web-pvt-sub-net" {
  name                 = "subnet-mphx-dev-web-private-wu2"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.web-pvt-vnet.name
  address_prefixes     = ["10.16.208.0/28"]
}
#web-pub
resource "azurerm_virtual_network" "web-pub-vnet" {
  name                = "vnet-mphx-dev-web-public-wu2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.16.200.0/21"]
}
resource "azurerm_subnet" "web-pub-sub-net" {
  name                 = "subnet-mphx-dev-web-public-wu2"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.web-pub-vnet.name
  address_prefixes     = ["10.16.200.0/28"]
}
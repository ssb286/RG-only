rg = {
  rg1 = {
    name     = "rg1"
    location = "centralindia"
  }
  rg2 = {
    name     = "rg2"
    location = "centralindia"
  }
}

vnet = {
  vnet1 = {
    name                = "vnet1"
    address_space       = ["10.0.0.0/16"]
    location            = "centralindia"
    resource_group_name = "rg1"
  }
}

subnet = {
  subnet1 = {
    name                 = "subnet1"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}




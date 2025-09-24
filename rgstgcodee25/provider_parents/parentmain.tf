module "resource_group" {
  source                  = "../Child_module/resource_group"
  resource_group_name     = "ravirg56"
  resource_group_location = "East US"
}
# module "azurerm_virtual_network" {
#   depends_on               = [module.resource_group]
#   source                   = "../Child_module/virtual_network"
#   virtual_network_name     = "ravivnet"
#   virtual_network_location = "East US"
#   resource_group_name      = "ravirg"
#   address_space            = ["10.0.0.0/16"]
#   dns_servers              = ["10.0.0.4", "10.0.0.5"]
# }

# module "frontend_subnet" {
#   depends_on           = [module.azurerm_virtual_network]
#   source               = "../Child_module/subnet"
#   subnet_name          = "frontendsubnetravi"
#   resource_group_name  = "ravirg"
#   virtual_network_name = "ravivnet"
#   address_prefixes     = ["10.0.1.0/24"]
# }
# module "bakend_subnet" {
#   depends_on           = [module.azurerm_virtual_network]
#   source               = "../Child_module/subnet"
#   subnet_name          = "backendsubnetravi"
#   resource_group_name  = "ravirg"
#   virtual_network_name = "ravivnet"
#   address_prefixes     = ["10.0.2.0/24"]
# }


# module "frontend_public_ip" {
#   source              = "../child_module/public_ip _ address"
#   public_ip_name      = "pip1"
#   resource_group_name = "ravirg"
#   public_ip_location  = "East US"
#   allocation_method   = "Static"
# }
# module "backend_public_ip" {
#   source              = "../child_module/public_ip _ address"
#   public_ip_name      = "pip2"
#   resource_group_name = "ravirg"
#   public_ip_location  = "East US"
#   allocation_method   = "Static"
# }

# module "azurerm_linux_virtual_machinefrontend" {
#   source              = "../child_module/virtual_machine"
#   depends_on          = [module.frontend_subnet]
#   vm_name             = "ravivmfrontend"
#   resource_group_name = "ravirg"
#   vm_location         = "East US"
#   vm_size             = "Standard_F2"
#   image_publisher     = "Canonical"
#   image_offer         = "0001-com-ubuntu-server-jammy"
#   image_sku           = "22_04-lts"
#   image_version       = "latest"
#   nic_name            = "nicfrontend"
#   nic_location        = "East US"
#   subnet_name               = "frontendsubnetravi"
#   virtual_network_name = "ravivnet"
#   public_ip_name = "pip1"

# }
# module "azurerm_linux_virtual_machinebakend" {
#   source              = "../child_module/virtual_machine"
#   depends_on          = [module.bakend_subnet]
#   vm_name             = "ravivmbakend"
#   resource_group_name = "ravirg"
#   vm_location         = "East US"
#   vm_size             = "Standard_F2"
#   image_publisher     = "Canonical"
#   image_offer         =  "0001-com-ubuntu-server-focal"
#   image_sku           = "20_04-lts"
#   image_version       = "latest"
#   nic_name            = "nicbackend"
#   nic_location        = "East US"
#   subnet_name              = "backendsubnetravi"
#   virtual_network_name = "ravivnet"
#   public_ip_name = "pip2"
# }
# module "azurerm_mssql_server"  {
#   source = "../child_module/sql_server"
#   sql_name                        = "sqlraviserver21"
#   resource_group_name          = "ravirg"
#   location                     = "Canada Central"
#   administrator_login          = "adminravi1"
#   administrator_login_password = "Ridhu@246$"
#   }
# module "azurerm_mssql_database"  {
#   source = "../child_module/sql_database"
#   database_name           = "sqldatabase"
#   server_id      = "/subscriptions/3c0d3e39-55e3-464c-b220-26aee31cecb9/resourceGroups/ravirg/providers/Microsoft.Sql/servers/sqlraviserver21"
# }
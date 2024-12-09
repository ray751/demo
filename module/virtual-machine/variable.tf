variable "location" {
    description = "The location of the resources"
    type        = string
    default     = "East US"
}

variable "vnet_name" {
    description = "The name of the virtual network"
    type        = string
    default     = "example-network"
}

variable "subnet_id" {
    description = "The ID of the subnet"
    type        = string
    default     = "example-subnet"
  
}

variable "nic_name" {
    description = "The name of the network interface"
    type        = string
    default     = "example-nic"
}

variable "vm_name" {
    description = "The name of the virtual machine"
    type        = string
    default     = "example-machine"
}

variable "vm_size" {
    description = "The size of the virtual machine"
    type        = string
    default     = "Standard_DS1_v2"
}

variable "admin_username" {
    description = "The admin username for the virtual machine"
    type        = string
    default     = "adminuser"
}

variable "admin_password" {
    description = "The admin password for the virtual machine"
    type        = string
    default     = "Password1234!"
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
    default     = "example-resources"
}

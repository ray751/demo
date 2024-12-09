variable "vnet_address_space" {
    description = "The address space of the virtual network"
    type        = list(string)
    default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
    description = "The name of the subnet"
    type        = string
    default     = "example-subnet"
}

variable "subnet_address_prefixes" {
    description = "The address prefixes of the subnet"
    type        = list(string)
    default     = ["10.0.2.0/24"]
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
    default     = "example-resources"
}

variable "vnet_name" {
    description = "The name of the virtual network"
    type        = string
    default     = "example-network"
}

variable "location" {
    description = "The location of the resources"
    type        = string
    default     = "East US"
  
}

variable "vm_size" {
    description = "The size of the virtual machine"
    type        = string
    default     = "Standard_DS1_v2"
}

variable "vm_name" {
    description = "The name of the virtual machine"
    type        = string
    default     = "example-machine"
}

variable "nic_name" {
    description = "The name of the network interface"
    type        = string
    default     = "example-nic"
}

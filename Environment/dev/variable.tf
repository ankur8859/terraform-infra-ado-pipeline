variable "rgs" {
  type = map(object({
    name       = string
    location   = string
    tags       = map(string)
  }))
}


variable "networks" {
    type = map(object(
        {
            name                = string
            location            = string
            resource_group_name = string
            address_space       = list(string)
            tags                = optional(map(string))
            subnets = optional(list(object({
                name             = string
                address_prefixes = list(string)
            })))
        }
    ))
}
 variable "key_vault" {
  
 }
variable "public_ips" {
    type = map(object(
        {
            name = string
            resource_group_name = string
            location = string
            allocation_method =string
            tags = optional(map(string))
        }
    ))
}

variable "vms" {
type = map(object(
    {
        nic_name = string
        location = string
        kv_name = string
        resource_group_name = string
        virtual_network_name = string
        subnet_name = string
        pip_name = string
        vm_name = string
        size = string
        source_image_reference = map(string)
    }
))
}
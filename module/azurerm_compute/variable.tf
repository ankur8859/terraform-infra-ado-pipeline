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
rgs = {
    rg1 = {
        name = "rg-ank-todo-app"
        location = "japaneast"
        tags = {
            env = "dev"
        }
    }
}

networks = {
    vnet1 = {
        name = "vnet-ank-todo-app"
        location = "japaneast"
        resource_group_name = "rg-ank-todo-app"
        address_space = ["10.0.0.0/16"]
        tags = {
            env = "dev"
        }
        subnets = [
            {
                name = "froentend-ank-subnet"
                address_prefixes = ["10.0.1.0/24"]
            },
            {
                name = "backend-subnet"
                address_prefixes = ["10.0.2.0/24"]
            }
        ]
    }
}

key_vault = {
    kv1 = {
    kv_name = "kv-ank-todo-app"
    location = "japaneast"
    rg_name  = "rg-ank-todo-app"
}
}
public_ips = {
    app1 = {
        name = "pip-ank-todo-app1"
        resource_group_name = "rg-ank-todo-app"
        location = "japaneast"
        allocation_method = "Static"
        tags = {
            app = "froentend"
            env = "dev"
        }
    }
    app2 = {
        name = "pip-ank-todo-app2"
        resource_group_name = "rg-ank-todo-app"
        location = "japaneast"
        allocation_method = "Static"
        tags = {
            app = "backend"
            env = "dev"
        }
    }
}

vms = {
    vm1 = {
        nic_name = "nic-ank-todo-app1"
        location =  "japaneast"
        resource_group_name = "rg-ank-todo-app"
        virtual_network_name = "vnet-ank-todo-app"
        subnet_name = "froentend-ank-subnet"
        pip_name = "pip-ank-todo-app1"
        vm_name = "froentend-ank-vm"
        size = "Standard_F2"
        kv_name = "kv-ank-todo-app" 
        source_image_reference = {
            publisher = "canonical"
            offer = "0001-com-ubuntu-server-jammy"
            sku       = "22_04-lts"
 
            version   = "latest"
        }                                             
    }

  vm2 = {
        nic_name = "nic-ank-todo-app2"
        location =  "japaneast"
        resource_group_name = "rg-ank-todo-app"
        virtual_network_name = "vnet-ank-todo-app"
        subnet_name = "backend-subnet"
        pip_name = "pip-ank-todo-app2"
        vm_name = "backend-ank-vm"
        size = "Standard_F2"
        kv_name = "kv-ank-todo-app" 
        source_image_reference = {
            publisher = "canonical"
            offer = "0001-com-ubuntu-server-jammy"
            sku       = "22_04-lts"
            version   = "latest"
        }                                             
    }
}
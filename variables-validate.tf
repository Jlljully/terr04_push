variable "iptest" {
    type          = string
    description   = "ip-адрес"
#    default = "1920.1680.0.1"
    validation {
        condition = can(regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$",var.iptest))
        error_message = "Invalid IP address"
    }
}

variable "test_ip_list" {
    type          = list(string)
    description   = "список ip-адресов"
    validation {
        condition =  alltrue([
        for i in var.test_ip_list : can(regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$",i))
        ])
        error_message = "Invalid IP address"
    }
}

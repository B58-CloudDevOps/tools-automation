# All the varaibles that are needed for vault will be placed here:
variable "tools" {
  default = {
    vault = {
      name          = "vault"
      instance_type = "t3.small"
      port_no       = 8200
    }
    vault = {
      name          = "tprometheus"
      instance_type = "t3.small"
      port_no       = 9090
    }
  }
}
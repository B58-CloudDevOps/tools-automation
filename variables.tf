# All the varaibles that are needed for vault will be placed here:
variable "tools" {
  default = {
    vault = {
      name          = "vault"
      instance_type = "t3.small"
      port_no = {
        vault = 8200
      }
    }
    prometheus = {
      name          = "prometheus"
      instance_type = "t3.small"

      port_no = {
        prometheus = 9000
      }
    }

    grafana = {
      name          = "grafana"
      instance_type = "t3.small"

      port_no = {
        grafana = 3000
      }
    }

  }
}
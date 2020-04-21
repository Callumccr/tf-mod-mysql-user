provider "mysql" {
  endpoint = lookup(var.provider_config, "host", "")
  username = lookup(var.provider_config, "username", "")
  password = lookup(var.provider_config, "password", "")
}
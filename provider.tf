provider "mysql" {
  endpoint = lookup(var.mysql_config, "host", "")
  username = lookup(var.mysql_config, "username", "")
  password = lookup(var.mysql_config, "password", "")
}
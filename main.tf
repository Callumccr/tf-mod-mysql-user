resource "mysql_user" "default" {
  user               = var.mysql_user
  host               = lookup(var.mysql_config, "host", "")
  plaintext_password = var.mysql_password
}

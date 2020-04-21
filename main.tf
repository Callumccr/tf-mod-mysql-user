resource "mysql_user" "default" {
  user               = var.mysql_user_name
  host               = lookup(var.mysql_config, "host", "")
  plaintext_password = var.mysql_user_password
}

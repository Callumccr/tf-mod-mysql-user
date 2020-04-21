# -----------------------------------------------------------------------------
# Outputs: TF-MOD-MYSQL-USER
# -----------------------------------------------------------------------------

output "mysql_user_name" {
  description = "The name of the user."
  value       = mysql_user.default.user
}

output "mysql_user_password" {
  description = "The password of the user."
  value       = mysql_user.default.password
}

output "mysql_user_id" {
  description = "The id of the user created"
  value       = mysql_user.default.password
}

output "mysql_user_host" {
  description = "The host of where the user was created."
  value       = mysql_user.default.password
}

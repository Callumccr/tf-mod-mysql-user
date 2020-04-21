## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| mysql | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| availability\_zones | (Required) - The AWS avaialbility zones (e.g. ap-southeast-2a/b/c). Autoloaded from region.tfvars. | `list(string)` | n/a | yes |
| aws\_account\_id | The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars | `string` | `""` | no |
| aws\_assume\_role\_arn | (Optional) - ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars. | `string` | `""` | no |
| aws\_assume\_role\_external\_id | (Optional) - The external ID to use when making the AssumeRole call. | `string` | `""` | no |
| aws\_assume\_role\_session\_name | (Optional) - The session name to use when making the AssumeRole call. | `string` | `""` | no |
| aws\_region | The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars. | `string` | `""` | no |
| enabled | (Optional) -  A Switch that decides whether to create a terraform resource or run a provisioner. Default is true | `bool` | `true` | no |
| mysql\_config | (Optional) A list of objects that contain RDS information including `username`, `password`, `port`, `hostname`, and 'arn' to create lambda rotation | <code><pre>object({<br>    engine               = string<br>    host                 = string<br>    username             = string<br>    password             = string<br>    dbname               = string<br>    port                 = string<br>    dbInstanceIdentifier = string<br>  })<br></pre></code> | <code><pre>{<br>  "dbInstanceIdentifier": "",<br>  "dbname": "",<br>  "engine": "mysql",<br>  "host": "",<br>  "password": "",<br>  "port": "3306",<br>  "username": "root"<br>}<br></pre></code> | no |
| mysql\_user | (Optional) -  A Switch that decides whether to create a terraform resource or run a provisioner. Default is true | `string` | `""` | no |
| mysql\_user\_password | (Optional) -  A Switch that decides whether to create a terraform resource or run a provisioner. Default is true | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| mysql\_user\_host | The host of where the user was created. |
| mysql\_user\_id | The id of the user created |
| mysql\_user\_name | The name of the user. |
| mysql\_user\_password | The password of the user. |


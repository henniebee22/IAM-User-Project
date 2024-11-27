# Variable for IAM user names
variable "names" {
  default = ["Debasis", "Tamzida", "Nasrin", "Saba", "Apu", "Rezaul"]
}
# Create multiple IAM users using HCL - HashiCorp Language
resource "aws_iam_user" "my_iam_users" {
  count = length(var.names)
  name = var.names[count.index]
}	

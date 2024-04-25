variable "maincidr" {
  default = "10.10.0.0/16"
}
variable "mysubnet1" {
    default = "10.10.1.0/24"
}
variable "myami" {
  default = "ami-001843b876406202a"
}
variable "myinstancetype" {
    default = "t2.micro"
}
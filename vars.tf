variable "amis" {
  type = map(string)

  default = {
    "us-east-1" = "ami-053b0d53c279acc90"
    "us-east-2" = "ami-024e6efaf93d85776"
  }
}

variable "cdirs_acesso_remoto" {
    type = list(string)
    default = ["189.102.35.84/32","189.102.35.84/32"]

    
  
}
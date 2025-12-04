variable "vpc_cidr" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "availability_zones" {
  description = "서브넷을 생성할 가용 영역 목록"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "public subnet CIDR 블록 목록"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "private subnet CIDR 블록 목록"
  type        = list(string)
}
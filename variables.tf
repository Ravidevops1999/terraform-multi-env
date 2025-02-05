variable "instances"{
    type = map
}

variable "domain_name"{
    default = "marampudi.online"
}

variable "zone_id" {
    default = ""
}

variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = "True"
    }
}

variable "tags" {
    type=map
}
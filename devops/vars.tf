variable "rg" {
    default = "placeholder"
}

variable "env" {
    default = "dev"
}

variable "sa_name_prefix" {
    default = "testst"
}

variable "tag_pairs" {
    type    = "map"
    default = {
        "Project" = "project-name"
        "RTresourceBypass" = "allowed"
        "created-by" = "user-name"
    }
}
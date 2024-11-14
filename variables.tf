#########################
###      GENERAL      ###
#########################

variable "tag_owner" {
  description = "owner of the resource in cloud provider"
  type        = string
  default     = "felipemarques"
}

#########################
###        DB         ###
#########################

variable "use_custom_db_password" {
  default = false
}

variable "custom_db_password" {
  description = "A parameter for a custom database password."
  default     = null
  type        = string
}

#########################
###            ###
#########################

#########################
###         ###
#########################


variable "name" {
  description = "The Project Name."
  type        = string
}

variable "description" {
  description = "The Description of the Project."
  type        = string
}

variable "visibility" {
  description = "Specifies the visibility of the Project. Valid values: private or public. Defaults to private."
  type        = string
  default     = "private"

  validation {
    condition     = contains(["private", "public"], var.visibility)
    error_message = "The visibility value must be one of private or public."
  }
}

variable "version_control" {
  description = "Specifies the version control system. Valid values: Git or Tfvc. Defaults to Git."
  type        = string
  default     = "Git"

  validation {
    condition     = contains(["Git", "Tfvc"], var.version_control)
    error_message = "The version_control value must be one of Git or Tfvc."
  }
}

variable "work_item_template" {
  description = "Specifies the work item template. Valid values: Agile, Basic, CMMI, Scrum or a custom, pre-existing one. Defaults to Agile."
  type        = string
  default     = "Agile"

  validation {
    condition     = contains(["Agile", "Basic", "CMMI", "Scrum", "custom"], var.work_item_template)
    error_message = "The work_item_template value must be one of Agile, Basic, CMMI, Scrum or custom."
  }
}
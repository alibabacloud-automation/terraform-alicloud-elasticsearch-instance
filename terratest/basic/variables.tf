variable "instance_charge_type" {
  default = "PostPaid"
}

variable "period" {
  default = "1"
}

variable "data_node_spec" {
  description = "The data node specifications of the Elasticsearch instance."
}

variable "data_node_amount" {
  description = "The Elasticsearch cluster's data node quantity, between 2 and 50."
}

variable "data_node_disk_size" {
  description = "The single data node storage space."
}

variable "data_node_disk_type" {
  description = "The data node disk type. Supported values: cloud_ssd, cloud_efficiency."
}

variable "es_version" {
  description = "Elasticsearch version. Supported values: 5.5.3_with_X-Pack and 6.3_with_X-Pack."
}

variable "vswitch_id" {
  description = "The ID of VSwitch."
  default     = ""
}

variable "password" {
  description = "The password of the instance."
}

variable "private_whitelist" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "kibana_whitelist" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "master_node_spec" {
  default = ""
}

variable "description" {
  default = ""
}

variable "number_of_instance" {
  default = 1
}


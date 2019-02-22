variable "instance_charge_type" {
  description = "Valid values are PrePaid, PostPaid. Default to PostPaid"
  default     = "PostPaid"
}

variable "period" {
  description = "The duration that you will buy Elasticsearch instance (in month). It is valid when instance_charge_type is PrePaid. Valid values: [1~9], 12, 24, 36."
  default     = "1"
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
}

variable "password" {
  description = "The password of the instance."
}

variable "private_whitelist" {
  type        = "list"
  description = "Set the instance's IP whitelist in VPC network."
  default     = ["0.0.0.0/0"]
}

variable "kibana_whitelist" {
  type        = "list"
  description = "Set the Kibana's IP whitelist in internet network."
  default     = ["0.0.0.0/0"]
}

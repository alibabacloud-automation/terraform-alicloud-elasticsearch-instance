variable "region" {
  description = "(Deprecated from version 1.2.0) The region used to launch this module resources."
  type        = string
  default     = ""
}

variable "number_of_instance" {
  description = "Instance count"
  type        = number
  default     = 1
}

variable "instance_charge_type" {
  description = "Valid values are PrePaid, PostPaid. Default to PostPaid"
  type        = string
  default     = "PostPaid"
}

variable "period" {
  description = "The duration that you will buy Elasticsearch instance (in month). It is valid when instance_charge_type is PrePaid. Valid values: [1~9], 12, 24, 36."
  type        = number
  default     = 1
}

variable "data_node_amount" {
  description = "The Elasticsearch cluster's data node quantity, between 2 and 50."
  type        = number
  default     = 2
}

variable "data_node_spec" {
  description = "The data node specifications of the Elasticsearch instance."
  type        = string
  default     = "elasticsearch.sn1ne.large"
}

variable "data_node_disk_size" {
  description = "The single data node storage space."
  type        = number
  default     = 20
}

variable "data_node_disk_type" {
  description = "The data node disk type. Supported values: cloud_ssd, cloud_efficiency."
  type        = string
  default     = "cloud_efficiency"
}

variable "vswitch_id" {
  description = "The ID of VSwitch."
  type        = string
  default     = ""
}

variable "password" {
  description = "The password of the instance."
  type        = string
  default     = ""
}

variable "es_version" {
  description = "Elasticsearch version. Supported values: 5.5.3_with_X-Pack and 6.3_with_X-Pack."
  type        = string
  default     = "5.5.3_with_X-Pack"
}

variable "private_whitelist" {
  description = "Set the instance's IP whitelist in VPC network."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "kibana_whitelist" {
  description = "Set the Kibana's IP whitelist in internet network."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "master_node_spec" {
  description = "The master node specifications of the Elasticsearch instance."
  type        = string
  default     = "elasticsearch.sn2ne.large"
}

variable "description" {
  description = "The description of the Elasticsearch instance."
  type        = string
  default     = ""
}

variable "data_node_disk_performance_level" {
  description = "Cloud disk performance level. Valid values are `PL0`, `PL1`, `PL2`, `PL3`. The `data_node_disk_type` muse be `cloud_essd`."
  type        = string
  default     = null
}

variable "kibana_node_spec" {
  description = "The kibana node specifications of the Elasticsearch instance."
  type        = string
  default     = null
}

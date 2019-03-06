variable "instance_charge_type" {
  default = "PostPaid"
}

variable "period" {
  default = "1"
}

variable "data_node_spec" {
  default = "elasticsearch.sn2ne.large"
}

variable "data_node_amount" {
  default = "2"
}

variable "data_node_disk_size" {
  default = "20"
}

variable "data_node_disk_type" {
  default = "cloud_ssd"
}

variable "version" {
  default = "6.3_with_X-Pack"
}

variable "vswitch_id" {
  default = "vcwitch id"
}

variable "password" {
  default = "My@Test1Test"
}

variable "private_whitelist" {
  type    = "list"
  default = ["0.0.0.0/0"]
}

variable "kibana_whitelist" {
  type    = "list"
  default = ["0.0.0.0/0"]
}

variable "count" {
  description = "Instance count"
  default     = 1
}

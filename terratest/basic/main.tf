module "vpc" {
  //source = "alibaba/vpc/alicloud"
  source = "alibaba/vpc/alicloud"

  vpc_name = "my_terratest_vpc"

  vswitch_name = "my_terratest_vswitch"
  vswitch_cidrs = [
    "172.16.1.0/24"
  ]
}

module "elasticsearch" {
  source        = "../../"
  period = var.period
  password            = var.password
  private_whitelist = var.private_whitelist
  kibana_whitelist = var.kibana_whitelist
  description = var.description
  number_of_instance = var.number_of_instance
  data_node_spec      = var.data_node_spec
  data_node_amount    = var.data_node_amount
  data_node_disk_size = var.data_node_disk_size
  data_node_disk_type = var.data_node_disk_type
  es_version          = var.es_version
  vswitch_id          = var.vswitch_id == "" ? module.vpc.vswitch_ids[0] : var.vswitch_id
  master_node_spec    = var.master_node_spec
}


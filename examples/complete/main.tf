data "alicloud_elasticsearch_zones" "default" {
}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_cidr           = "172.16.0.0/16"
  vswitch_cidrs      = ["172.16.0.0/21"]
  availability_zones = [data.alicloud_elasticsearch_zones.default.zones.0.id]
}

module "example" {
  source = "../.."

  number_of_instance = 1

  instance_charge_type = var.instance_charge_type
  period               = var.period
  data_node_amount     = var.data_node_amount
  data_node_spec       = var.data_node_spec
  data_node_disk_size  = var.data_node_disk_size
  data_node_disk_type  = var.data_node_disk_type
  vswitch_id           = module.vpc.this_vswitch_ids[0]
  password             = var.password
  es_version           = "5.5.3_with_X-Pack"
  private_whitelist    = var.private_whitelist
  kibana_whitelist     = var.kibana_whitelist
  master_node_spec     = var.master_node_spec
  description          = var.description

}
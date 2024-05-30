resource "alicloud_elasticsearch_instance" "instance" {
  count = var.number_of_instance

  instance_charge_type             = var.instance_charge_type
  period                           = var.period
  data_node_amount                 = var.data_node_amount
  data_node_spec                   = var.data_node_spec
  data_node_disk_size              = var.data_node_disk_size
  data_node_disk_type              = var.data_node_disk_type
  vswitch_id                       = var.vswitch_id
  password                         = var.password
  version                          = var.es_version
  private_whitelist                = var.private_whitelist
  kibana_whitelist                 = var.kibana_whitelist
  master_node_spec                 = var.master_node_spec
  description                      = var.description
  data_node_disk_performance_level = var.data_node_disk_performance_level
  kibana_node_spec                 = var.kibana_node_spec
}
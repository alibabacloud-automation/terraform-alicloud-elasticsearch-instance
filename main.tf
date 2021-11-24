#########################
# Elasticsearch instance
#########################

resource "alicloud_elasticsearch_instance" "instance" {
  instance_charge_type = var.instance_charge_type
  data_node_amount     = var.data_node_amount
  data_node_spec       = var.data_node_spec
  data_node_disk_size  = var.data_node_disk_size
  data_node_disk_type  = var.data_node_disk_type
  vswitch_id           = var.vswitch_id
  password             = var.password
  version              = var.es_version
  count                = var.number_of_instance
  private_whitelist    = var.private_whitelist
  kibana_whitelist     = var.kibana_whitelist
  description          = var.description
  master_node_spec     = var.master_node_spec
  period               = var.period
}


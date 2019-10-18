output "this_elasticsearch_ids" {
  value = alicloud_elasticsearch_instance.instance.*.id
}

output "this_instance_charge_type" {
  value = alicloud_elasticsearch_instance.instance.*.instance_charge_type[0]
}

output "this_period" {
  value = alicloud_elasticsearch_instance.instance.*.period[0]

}

output "this_data_node_spec" {
  value = alicloud_elasticsearch_instance.instance.*.data_node_spec[0]
}

output "this_data_node_amount" {
  value = alicloud_elasticsearch_instance.instance.*.data_node_amount[0]
}

output "this_data_node_disk_size" {
  value = alicloud_elasticsearch_instance.instance.*.data_node_disk_size[0]
}

output "this_data_node_disk_type" {
  value = alicloud_elasticsearch_instance.instance.*.data_node_disk_type[0]
}

output "this_es_version" {
  value = alicloud_elasticsearch_instance.instance.*.version[0]
}

output "this_vswitch_id" {
  value = alicloud_elasticsearch_instance.instance.*.vswitch_id[0]
}

output "this_password" {
  value = alicloud_elasticsearch_instance.instance.*.password[0]
}

output "this_private_whitelist" {
  value = alicloud_elasticsearch_instance.instance.*.private_whitelist[0]
}

output "this_kibana_whitelist" {
  value = alicloud_elasticsearch_instance.instance.*.kibana_whitelist[0]
}

output "this_master_node_spec" {
  value = alicloud_elasticsearch_instance.instance.*.master_node_spec[0]
}

output "this_description" {
  value = alicloud_elasticsearch_instance.instance.*.description[0]
}

output "number_of_instance" {
  value = length(alicloud_elasticsearch_instance.instance.*.id)
}


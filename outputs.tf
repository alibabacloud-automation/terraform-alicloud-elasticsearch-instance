output "this_elasticsearch_ids" {
  value = concat(alicloud_elasticsearch_instance.instance.*.id, [""])[0]
}

output "this_instance_charge_type" {
  value = concat(alicloud_elasticsearch_instance.instance.*.instance_charge_type, [""])[0]
}

output "this_period" {
  value = concat(alicloud_elasticsearch_instance.instance.*.period, [""])[0]

}

output "this_data_node_spec" {
  value = concat(alicloud_elasticsearch_instance.instance.*.data_node_spec, [""])[0]
}

output "this_data_node_amount" {
  value = concat(alicloud_elasticsearch_instance.instance.*.data_node_amount, [""])[0]
}

output "this_data_node_disk_size" {
  value = concat(alicloud_elasticsearch_instance.instance.*.data_node_disk_size, [""])[0]
}

output "this_data_node_disk_type" {
  value = concat(alicloud_elasticsearch_instance.instance.*.data_node_disk_type, [""])[0]
}

output "this_es_version" {
  value = concat(alicloud_elasticsearch_instance.instance.*.version, [""])[0]
}

output "this_vswitch_id" {
  value = concat(alicloud_elasticsearch_instance.instance.*.vswitch_id, [""])[0]
}

output "this_password" {
  value = concat(alicloud_elasticsearch_instance.instance.*.password, [""])[0]
}

output "this_private_whitelist" {
  value = concat(alicloud_elasticsearch_instance.instance.*.private_whitelist, [""])[0]
}

output "this_kibana_whitelist" {
  value = concat(alicloud_elasticsearch_instance.instance.*.kibana_whitelist, [""])[0]
}

output "this_master_node_spec" {
  value = concat(alicloud_elasticsearch_instance.instance.*.master_node_spec, [""])[0]
}

output "this_description" {
  value = concat(alicloud_elasticsearch_instance.instance.*.description, [""])[0]
}

output "number_of_instance" {
  value = length(alicloud_elasticsearch_instance.instance.*.id)
}
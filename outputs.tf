output "this_elasticsearch_ids" {
  description = "The id of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].id, [""])[0]
}

output "this_instance_charge_type" {
  description = "The instance charge type of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].instance_charge_type, [""])[0]
}

output "this_period" {
  description = "The period of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].period, [""])[0]

}

output "this_data_node_spec" {
  description = "The data node spec of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].data_node_spec, [""])[0]
}

output "this_data_node_amount" {
  description = "The data node amount of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].data_node_amount, [""])[0]
}

output "this_data_node_disk_size" {
  description = "The data node disk size of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].data_node_disk_size, [""])[0]
}

output "this_data_node_disk_type" {
  description = "The data node disk type of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].data_node_disk_type, [""])[0]
}

output "this_es_version" {
  description = "The version of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].version, [""])[0]
}

output "this_vswitch_id" {
  description = "The vswitch id of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].vswitch_id, [""])[0]
}

output "this_password" {
  description = "The password of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].password, [""])[0]
}

output "this_private_whitelist" {
  description = "The private whitelist of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].private_whitelist, [""])[0]
}

output "this_kibana_whitelist" {
  description = "The kibana whitelist of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].kibana_whitelist, [""])[0]
}

output "this_master_node_spec" {
  description = "The master node spec of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].master_node_spec, [""])[0]
}

output "this_description" {
  description = "The description of elasticsearch instance"
  value       = concat(alicloud_elasticsearch_instance.instance[*].description, [""])[0]
}

output "number_of_instance" {
  description = "The number of elasticsearch instances"
  value       = length(alicloud_elasticsearch_instance.instance[*].id)
}
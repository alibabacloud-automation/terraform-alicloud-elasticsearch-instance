output "elasticsearch_ids" {
  value = join(",", alicloud_elasticsearch_instance.instance.*.id)
}


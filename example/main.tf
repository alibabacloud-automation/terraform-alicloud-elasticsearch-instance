module "instance" {
  source = "../"
  password = "MyTest@1234"
  data_node_spec = "elasticsearch.sn2ne.large"
  data_node_amount = "2"
  data_node_disk_size = "20"
  data_node_disk_type = "cloud_ssd"
  es_version = "5.5.3_with_X-Pack"
  vswitch_id = "vsw-uf6hser75qrlib5idurat"
  master_node_spec = "elasticsearch.sn2ne.large"
}

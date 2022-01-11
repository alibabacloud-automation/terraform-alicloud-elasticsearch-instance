#alicloud_elasticsearch_instance
period              = 2
data_node_amount    = 3
data_node_spec      = "elasticsearch.sn2ne.large"
data_node_disk_size = 30
data_node_disk_type = "cloud_ssd"
password            = "YourPassword123!Update"
private_whitelist   = ["172.16.0.0/21"]
kibana_whitelist    = ["172.16.0.0/21"]
master_node_spec    = "elasticsearch.sn2ne.xlarge"
description         = "update-tf-description"
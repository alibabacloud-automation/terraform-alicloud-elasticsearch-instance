# alicloud_elasticsearch_instance

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|description          |  The description of instance.   |   string  |    instance id   |    no       |
|instance_charge_type |  Valid values are `PrePaid`, `PostPaid`.  |   string  |    `PostPaid`   |    yes       |
|period               |  The duration that you will buy Elasticsearch instance (in month). It is valid when instance_charge_type is PrePaid. Valid values: [1~9], 12, 24, 36.    |   string  |    "1"   |    no       |
|data_node_amount     |  The Elasticsearch cluster's data node quantity, between 2 and 50.  |   string  |   "" |    yes       |
|data_node_spec       |  The data node specifications of the Elasticsearch instance.   |   string  |   ""  |    yes       |
|data_node_disk_size  |  The single data node storage space. An SSD disk, supports a maximum of 2048 GiB (2 TB). An ultra disk, supports a maximum of 5120 GiB (5 TB). If the data to be stored is larger than 2048 GiB, an ultra disk can only support the following data sizes (GiB): [2560, 3072, 3584, 4096, 4608, 5120]. |   string  |    ""   |    yes       |
|data_node_disk_type  |  The data node disk type. Supported values: `cloud_ssd`, `cloud_efficiency`.    |   string  |    ""   |    yes       |
|vswitch_id           |  The ID of VSwitch.   |   string  |    ""   |    yes       |
|password             |  The password of the instance. The password can be 8 to 32 characters in length and must contain three of the following conditions: uppercase letters, lowercase letters, numbers, and special characters (!@#$%^&*()_+-=).   |   string  |    ""   |    yes       |
|version              |  Elasticsearch version. Supported values: `5.5.3_with_X-Pack` and `6.3_with_X-Pack`.  |   string  |    ""   |    yes       |
|private_whitelist    |  Set the instance's IP whitelist in VPC network.  |   list  |    ""   |    no       |
|kibana_whitelist     |  Set the Kibana's IP whitelist in internet network.  |   list  |    ""   |    no       |
|master_node_spec     |  The dedicated master node spec. If specified, dedicated master node will be created.  |   string  |    ""   |    no       |

## Outputs

| Name | Description |
|------|-------------|
| instance_id    |     the ID of Elasticsearch instance.     |

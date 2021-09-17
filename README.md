# terraform-alicloud-elasticsearch-instance
Terraform module which creates ElasticSearch Instances on Alibaba Cloud

These types of resources are supported:

* [Alicloud_elasticsearch_instance](https://www.terraform.io/docs/providers/alicloud/r/elasticsearch.html)

Root module calls these modules which can also be used separately to create independent resources:

* [instance](https://github.com/terraform-alicloud-modules/terraform-alicloud-elasticsearch-instance/tree/master/modules/instance) - creates Elasticsearch instance

Usage
-----
You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. main.tf

        module "instance" {
          source = "terraform-alicloud-modules/elasticsearch-instance/alicloud"
          password = "Your password"
          data_node_spec = "elasticsearch.sn2ne.large"
          data_node_amount = "2"
          data_node_disk_size = "20"
          data_node_disk_type = "cloud_ssd"
          es_version = "5.5.3_with_X-Pack"
          vswitch_id = "vswitch id"
        }

2. Setting values for the following variables through environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY
    - ALICLOUD_REGION

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
|es_version           |  Elasticsearch version. Supported values: `5.5.3_with_X-Pack` and `6.3_with_X-Pack`.  |   string  |    ""   |    yes       |
|private_whitelist    |  Set the instance's IP whitelist in VPC network.  |   list  |    ["0.0.0.0/0"]   |    no       |
|kibana_whitelist     |  Set the Kibana's IP whitelist in internet network.  |   list  |    ["0.0.0.0/0"]   |    no       |
|master_node_spec     |  The dedicated master node spec. If specified, dedicated master node will be created.  |   string  |    ""   |    no       |
|number_of_instance   |  The amount of the Elasticsearch instances.  |   int  |    1   |    no       |

## Outputs

| Name | Description |
|------|-------------|
| instance_ids    |     the IDs of Elasticsearch instance.     |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
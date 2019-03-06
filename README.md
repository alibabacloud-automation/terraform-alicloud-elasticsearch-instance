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

        resource "alicloud_elasticsearch_instance" "instance" {
            count                = 2
            source               = "alibaba/elasticsearch/alicloud"
            vswitch_id           = "vsw-012345678abcdef"
            instance_charge_type = "PostPaid"
            data_node_amount     = "2"
            data_node_spec       = "elasticsearch.sn2ne.large"
            data_node_disk_size  = "20"
            data_node_disk_type  = "cloud_ssd"
            password             = "PasswordGmail@"
            version              = "5.5.3_with_X-Pack"
        }

2. Setting values for the following variables through environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY
    - ALICLOUD_REGION

Authors
-------
Created and maintained by Guangfan Qu(@guangfanqu guangfan.qu@gmail.com)

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
# terraform-alicloud-elasticsearch-instance
Terraform module which creates ElasticSearch Instances on Alibaba Cloud

These types of resources are supported:

* [Alicloud_elasticsearch_instance](https://www.terraform.io/docs/providers/alicloud/r/elasticsearch.html)

Root module calls these modules which can also be used separately to create independent resources:

* [instance](https://github.com/terraform-alicloud-modules/terraform-alicloud-elasticsearch-instance/tree/master/modules/instance) - creates Elasticsearch instance

Usage
-----

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Aelasticsearch-instance&spm=docs.m.terraform-alicloud-modules.elasticsearch-instance&intl_lang=EN_US" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>

You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. main.tf

```hcl
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
```

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

## Notes
From the version v1.2.0, the module has removed the following `provider` setting:

```hcl
provider "alicloud" {
   version              = ">=1.56.0"
   region               = var.region != "" ? var.region : null
   configuration_source = "terraform-alicloud-modules/elasticsearch-instance"
}
```

If you still want to use the `provider` setting to apply this module, you can specify a supported version, like 1.1.0:

```hcl
module "instance" {
   source         = "terraform-alicloud-modules/elasticsearch-instance/alicloud"
   version        = "1.1.0"
   region         = "cn-beijing"
   password       = "Your password"
   data_node_amount = "2"
   // ...
}
```

If you want to upgrade the module to 1.2.0 or higher in-place, you can define a provider which same region with
previous region:

```hcl
provider "alicloud" {
	region = "cn-beijing"
}
module "instance" {
   source         = "terraform-alicloud-modules/elasticsearch-instance/alicloud"
   password       = "Your password"
   data_node_amount = "2"
	// ...
}
```
or specify an alias provider with a defined region to the module using `providers`:

```hcl
provider "alicloud" {
   region = "cn-beijing"
   alias  = "bj"
}
module "instance" {
   source           = "terraform-alicloud-modules/elasticsearch-instance/alicloud"
   providers        = {
      alicloud = alicloud.bj
   }
   password         = "Your password"
   data_node_amount = "2"
   // ...
}
```

and then run `terraform init` and `terraform apply` to make the defined provider effect to the existing module state.

More details see [How to use provider in the module](https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.56.0 |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
package test

import (
	"fmt"
	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/stretchr/testify/assert"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

// An example of how to test the simple Terraform module in examples/terraform-basic-example using Terratest.
func TestTerraformBasicExampleNew(t *testing.T) {
	t.Parallel()
	uniqueNum := random.Random(10000, 99999)
	description := fmt.Sprintf("tf-terratest%d", uniqueNum)
	instanceChargeType := "PostPaid"
	dataNodeSpec := "elasticsearch.sn2ne.large"
	dataNodeAmount := "2"
	dataNodeDiskSize := "20"
	dataNodeDiskType := "cloud_ssd"
	esVersion := "5.5.3_with_X-Pack"
	password := "Your_password123"
	privateWhitelist := []string{"127.0.0.1", "192.168.0.0/24"}
	kibanaWhitelist := []string{"127.0.0.1", "192.168.0.0/24"}
	masterNodeSpec := "elasticsearch.sn2ne.large"
	numberOfInstance := "1"

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "./basic/",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"description":          description,
			"instance_charge_type": instanceChargeType,
			"data_node_spec":       dataNodeSpec,
			"data_node_amount":     dataNodeAmount,
			"data_node_disk_size":  dataNodeDiskSize,
			"data_node_disk_type":  dataNodeDiskType,
			"es_version":           esVersion,
			"password":             password,
			"private_whitelist":    privateWhitelist,
			"kibana_whitelist":     kibanaWhitelist,
			"master_node_spec":     masterNodeSpec,
			"number_of_instance":   numberOfInstance,
			// We also can see how lists and maps translate between terratest and terraform.
		},

		// Disable colors in Terraform commands so its easier to parse stdout/stderr
		NoColor: true,
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Run `terraform output` to get the values of output variables

	actualDescription := terraform.Output(t, terraformOptions, "this_description")
	actualInstanceChargeType := terraform.Output(t, terraformOptions, "this_instance_charge_type")
	actualDataNodeDiskSize := terraform.Output(t, terraformOptions, "this_data_node_disk_size")
	actualPassword := terraform.Output(t, terraformOptions, "this_password")
	actualPrivateWhitelist := terraform.OutputList(t, terraformOptions, "this_private_whitelist")
	actualMasterNodeSpec := terraform.Output(t, terraformOptions, "this_master_node_spec")
	actualDataNodeSpec := terraform.Output(t, terraformOptions, "this_data_node_spec")
	actualDataNodeAmount := terraform.Output(t, terraformOptions, "this_data_node_amount")
	actualDataNodeDiskType := terraform.Output(t, terraformOptions, "this_data_node_disk_type")
	actualEsVersion := terraform.Output(t, terraformOptions, "this_es_version")
	actualKibanaWhitelist := terraform.OutputList(t, terraformOptions, "this_kibana_whitelist")
	actualNumberOfInstance := terraform.Output(t, terraformOptions, "number_of_instance")

	// Verify we're getting back the outputs we expect

	assert.Equal(t, privateWhitelist, actualPrivateWhitelist)
	assert.Equal(t, kibanaWhitelist, actualKibanaWhitelist)
	assert.Equal(t, masterNodeSpec, actualMasterNodeSpec)
	assert.Equal(t, description, actualDescription)
	assert.Equal(t, dataNodeAmount, actualDataNodeAmount)
	assert.Equal(t, dataNodeDiskType, actualDataNodeDiskType)
	assert.Equal(t, esVersion, actualEsVersion)
	assert.Equal(t, instanceChargeType, actualInstanceChargeType)
	assert.Equal(t, dataNodeSpec, actualDataNodeSpec)
	assert.Equal(t, dataNodeDiskSize, actualDataNodeDiskSize)
	assert.Equal(t, password, actualPassword)
	assert.Equal(t, numberOfInstance, actualNumberOfInstance)
}

# GCP Terraform Tutorials

## [Tutorial 1](https://medium.com/google-cloud/getting-started-with-terraform-on-google-cloud-v1-0-67d2ec912641)
- Set up GCP account + project
- Install Terraform
- Install Gcloud CLI
- Set up GCP credentials:
   - Create service account
   - Assign project level owner role to service account
   - Create service account key file
   - set env variable to point to service account credentials key file
- Write Terraform configurations:
   - `providers.tf` — Stores provider configuration such as provider plugin, its version, and any necessary authentication details
   - `variables.tf` — This file is used to define input variables for your Terraform configuration
   - `output.tf` — It is to define output values that you want to display after the Terraform apply
   - `main.tf` — This file is the main entry point for your Terraform configuration.
   - `terraform.tfvars` — This file is used to provide values for the variables defined in `variables.tf`
   - `backend.tf` — This will store the terraform state config.
   - `storage.tf` - This will define a google storage bucket and give service account permission it
- How to deploy:
```
terraform init 

terraform fmt --recursive

terraform plan

terraform apply

// delete all resources
terraform destroy
```
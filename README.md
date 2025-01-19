# GCP Terraform Tutorials

## [Tutorial 1](https://medium.com/google-cloud/getting-started-with-terraform-on-google-cloud-v1-0-67d2ec912641) - Bootstrap (setup, service account, VPC, TF-state in GCP bucket)
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

## [Tutorial 2](https://medium.com/google-cloud/terraform-on-google-cloud-v1-1-deploying-vm-with-github-actions-446bc1061420) - Deploying VM With GitHub Actions
- Set up GitHub account + repo
- Add owner service acount key to GitHub repo secrets
- Update `variables.tf` from part 1
- Update `terraform.tfvars` from part 1
- `vm.tf` - Configure VM using Terraform
- Set up ingress firewall rules to ssh into VM
   - `firewall.tf` - Configures a set of policies that control inbound and outbound traffic to the VM and other resources in the VPC
- Enable the internet connectivity for VM with Internal IP by creating a NAT gateway . Using NAT, VM can connect to internet without any external IP

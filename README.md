# AzureTerraform
Automate infrastructure management with Terraform

## Prerequisite

- Install Terraform Cli
- Install Az cli
- Authentication Azure with terraform
    - Authenticating to Azure using the Azure CLI
    - Authenticating to Azure using Managed Service Identity
        - Terraform can be configured to use managed identity for authentication in one of two ways: using environment variables, or by defining the fields within the provider block.
            ```
            $ export ARM_USE_MSI=true
            $ export ARM_SUBSCRIPTION_ID=159f2485-xxxx-xxxx-xxxx-xxxxxxxxxxxx
            $ export ARM_TENANT_ID=72f988bf-xxxx-xxxx-xxxx-xxxxxxxxxxxx
            $ export ARM_CLIENT_ID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx # only necessary for user assigned identity
            $ export ARM_MSI_ENDPOINT=$MSI_ENDPOINT # only necessary when the msi endpoint is different than the well-known one
            ```
    - Authenticating to Azure using a Service Principal and a Client Certificate
            ```
            $ export ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"
            $ export ARM_CLIENT_CERTIFICATE_PATH="/path/to/my/client/certificate.pfx"
            $ export ARM_CLIENT_CERTIFICATE_PASSWORD="Pa55w0rd123"
            $ export ARM_SUBSCRIPTION_ID="00000000-0000-0000-0000-000000000000"
            $ export ARM_TENANT_ID="00000000-0000-0000-0000-000000000000"
            ```


## Commands

```
terraform init
terraform plan -var 'prefix=parz' -var 'location=westus2'
terraform apply -var 'prefix=parz' -var 'location=westus2' -auto-approve
terraform destroy -var 'prefix=parz' -var 'location=westus2' -auto-approve
```

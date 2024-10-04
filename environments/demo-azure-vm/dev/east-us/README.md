## Add credential information

```bash
# Create secret info
cp secret.tfvars.template secret.tfvars

# Replace the value in secret.tfvars
```

## Deploy

```bash
terraform init

terraform plan -var-file="secret.tfvars"

terraform apply -var-file="secret.tfvars"
```

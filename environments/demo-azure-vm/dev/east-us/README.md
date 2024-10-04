## Deploy

```bash
terraform init

terraform plan

terraform apply
```

## Result

- You can find the output information in the console

```
key_data = "xxxxxyyyyyzzzztttt generated-by-azure"
private_key_data = "zzzzzzzzzzzzzzzz"
public_ip_address = "x.y.z.t"
resource_group_name = "ENV-rg-some-thing"
```

## Connect to the VM

```bash
# Save the private key *.pem
mkdir ssh_key
cd ssh_key
vi azure-vm-private-key.pem

# It is required that your private key files are NOT accessible by others.
chmod 600 azure-vm-private-key.pem

# Now SSH
ssh -i azure-vm-private-key.pem azureadmin@x.y.z.t
```

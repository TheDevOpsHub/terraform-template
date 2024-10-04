# terraform-template
Terraform template repo

## Repo structure
```
terraform-template-repo/
├── .github/
│   └── workflows/
│       └── terraform-validate.yml       # GitHub Actions workflow to verify Terraform code
├── environments/
│   ├── dev/
│   │   ├── backend.tf          # Backend config for Terraform state (e.g., S3, GCS)
│   │   ├── main.tf             # Environment-specific resources
│   │   └── variables.tf        # Variables specific to the dev environment
│   ├── staging/
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   └── variables.tf
│   └── prod/
│       ├── backend.tf
│       ├── main.tf
│       └── variables.tf
├── modules/
│   └── network/                # Example module for networking (e.g., VPC, Subnets)
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── regions/
│   ├── us-west-1.tf            # Region-specific configurations and overrides
│   └── eu-central-1.tf
├── global/
│   ├── providers.tf            # Terraform provider configurations (e.g., AWS, Azure)
│   ├── variables.tf            # Global variables applicable across environments
│   └── outputs.tf              # Global outputs (if any)
├── terraform.tfvars            # Default variable values
└── README.md                   # Project documentation
```
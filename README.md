# terraform-template

Terraform project template for deploying infrastructure across multiple environments and regions, following best practices with modular structure and automated syntax checks (GitHub Actions)

## Repo structure

```
terraform-template-repo/
├── .github/
│   └── workflows/
│       └── terraform-validate.yml   # GitHub Actions workflow to verify Terraform code
├── environments/
│   └── demo-message/
│       ├── dev/
│       │   └── east-us/
│       │       ├── backend.tf       # Backend config for Terraform state (e.g., S3, GCS)
│       │       ├── main.tf          # Environment-specific resources for dev
│       │       └── variables.tf     # Variables specific to the dev environment
│       ├── staging/
│       │   └── east-us/
│       │       ├── backend.tf       # Backend config for Terraform state
│       │       ├── main.tf          # Environment-specific resources for staging
│       │       └── variables.tf     # Variables specific to the staging environment
│       └── prod/
│           └── east-us/
│               ├── backend.tf       # Backend config for Terraform state
│               ├── main.tf          # Environment-specific resources for production
│               └── variables.tf     # Variables specific to the production environment
├── modules/
│   └── demo-message/                        # Example module for demo (e.g., VPC, Subnets)
│       ├── main.tf                  # Core module logic (resources)
│       ├── variables.tf             # Module-specific variables
│       └── outputs.tf               # Module outputs (if any)
├── regions/
│   ├── us-west-1.tf                 # Region-specific configurations and overrides (e.g., AZ, networking)
│   └── eu-central-1.tf              # Region-specific configurations and overrides
├── global/
│   ├── providers.tf                 # Terraform provider configurations (e.g., AWS, Azure)
│   ├── variables.tf                 # Global variables applicable across environments
│   └── outputs.tf                   # Global outputs (if any)
├── terraform.tfvars                 # Default variable values for the project
└── README.md                        # Project documentation

```

## Demo content

This demonstrates how modules, multiple environments, and shared resources work. In your real project, you can refer to this demo code and structure, and then delete the demo module when it is no longer needed.

### Module

These are the demo modules:

- [modules/demo-message](./modules/demo-message/)
- [modules/demo-azure-vm](./modules/demo-azure-vm/)

### Use demo-message module

These demos use the same [modules/demo-message](./modules/demo-message/) above with difference variablesF

- [environments/demo-message/dev/](./environments/demo-message/dev/)
  ```
  cd environments/demo-message/dev/east-us
  terraform init
  terraform plan
  terraform apply
  ```
- [environments/demo-message/staging/](./environments/demo-message/staging/)
  ```
  cd environments/demo-message/staging/east-us
  terraform init
  terraform plan
  terraform apply
  ```
- [environments/demo-message/production/](./environments/demo-message/production/)
  ```
  cd environments/demo-message/production/east-us
  terraform init
  terraform plan
  terraform apply
  ```

### Use demo-azure-vm module

- TODO: Add document

## How to use the template?

- Create a new repo from this template.
- Add the code for your appropriate use case.
- Optionally, delete the demo module/code when it is no longer needed to keep the repo clean.

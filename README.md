# terraform-template

Terraform project template for deploying infrastructure across multiple environments and regions, following best practices with modular structure and automated syntax checks (GitHub Actions)

## Repo structure

```
terraform-template/                   # Root directory of the Terraform template repository
├── README.md                         # Project documentation and overview
├── environments                      # Directory containing environment-specific configurations for different deployments
│   ├── demo-azure-vm                 # Environment folder for provisioning Azure VM resources using the demo-azure-vm module
│   │   ├── dev                       # Development environment configuration for the demo-azure-vm setup
│   │   │   └── east-us               # Azure region-specific configuration for the dev environment (East US region)
│   │   │       ├── README.md         # Documentation for the dev environment setup in East US region
│   │   │       ├── main.tf           # Main Terraform configuration for provisioning resources in the dev environment
│   │   │       ├── output.tf         # Outputs for the dev environment (e.g., VM IP address)
│   │   │       └── variables.tf      # Variables specific to the dev environment (e.g., VM size, location)
│   │   └── staging                   # Staging environment folder for demo-azure-vm
│   │       ├── east-us               # Staging environment configuration for East US region
│   │       │   ├── README.md         # Documentation for the staging environment setup in East US region
│   │       │   ├── main.tf           # Main Terraform configuration for staging resources in East US
│   │       │   ├── output.tf         # Outputs for the staging environment
│   │       │   └── variables.tf      # Variables specific to the staging environment (East US)
│   │       └── southeastasia         # Staging environment configuration for Southeast Asia region
│   │           ├── README.md         # Documentation for the staging environment setup in Southeast Asia region
│   │           ├── main.tf           # Main Terraform configuration for staging resources in Southeast Asia
│   │           ├── output.tf         # Outputs for the staging environment (Southeast Asia)
│   │           └── variables.tf      # Variables specific to the staging environment (Southeast Asia)
│   └── production                    # Production environment folder for demo-azure-vm
│       └── east-us                   # Production environment configuration for East US region
│   └── demo-message                  # Environment folder for deploying resources using the demo-message module
│       ├── dev                       # Development environment configuration for demo-message setup
│       │   └── east-us               # Region-specific configuration for the dev environment (East US region)
│       │       ├── backend.tf        # Backend configuration for managing Terraform state
│       │       ├── main.tf           # Main Terraform configuration for deploying demo-message resources
│       │       ├── output.tf         # Outputs for the dev environment (e.g., message service IP address)
│       │       └── variables.tf      # Variables specific to the dev environment (e.g., service names, ports)
│       ├── production                # Production environment folder for demo-message
│       │   └── east-us               # Production environment configuration for East US region
│       └── staging                   # Staging environment folder for demo-message
│           └── east-us               # Staging environment configuration for East US region
├── modules                           # Directory containing reusable Terraform modules
│   ├── demo-azure-vm                 # Module for provisioning an Azure VM
│   │   ├── README.md                 # Documentation for the demo-azure-vm module
│   │   ├── main.tf                   # Main configuration for provisioning an Azure VM
│   │   ├── outputs.tf                # Outputs from the demo-azure-vm module (e.g., public IP, VM ID)
│   │   ├── providers.tf              # Provider configuration (Azure provider setup)
│   │   ├── ssh.tf                    # SSH-related configuration for Azure VM access (e.g., public keys)
│   │   └── variables.tf              # Module-specific variables (e.g., VM size, admin credentials)
│   └── demo-message                  # Module for a simple message service deployment
│       ├── main.tf                   # Main configuration for deploying a demo message service
│       ├── outputs.tf                # Outputs from the demo-message module (e.g., service endpoints)
│       └── variables.tf              # Variables for configuring the demo-message module
└── utils                             # Utility scripts and configurations for managing infrastructure
    └── deploy-something              # Placeholder utility for deploying additional resources
        └── main.tf                   # Main configuration for the utility (e.g., simple automation tasks)
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

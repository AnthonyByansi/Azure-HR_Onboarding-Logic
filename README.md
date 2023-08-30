# Azure-HR_Onboarding-Logic

This repository houses the infrastructure as code (IaC) and workflow logic to streamline and automate the onboarding process for new employees into Azure AD, while ensuring access to necessary Azure resources. This comprehensive guide will help you understand the project's structure, components, and deployment process.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Repository Structure](#repository-structure)
- [Workflow Overview](#workflow-overview)
- [Getting Started](#getting-started)
- [Deployment](#deployment)
- [Monitoring and Troubleshooting](#monitoring-and-troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The **AzureHROnboardingLogic** project aims to automate and optimize the onboarding of new employees into Azure AD, following industry best practices for DevOps and Azure administration. Leveraging Azure services like Logic Apps, Azure AD, and Azure Resource Manager, this project ensures efficient user provisioning, role assignment, and resource allocation while enhancing security and scalability.

## Prerequisites

Before you begin, ensure you have the following in place:

- Azure subscription
- Azure AD instance set up
- Familiarity with Azure Logic Apps, Azure Resource Manager, and Azure AD

## Repository Structure

The repository is organized as follows:

- `infrastructure/`: Contains the IaC code for provisioning Azure resources using Terraform/ARM templates.
- `workflow/`: Holds the Logic App workflow design and configuration.
- `scripts/`: Includes any necessary scripts for deployment or automation.

## Workflow Overview

The Logic App workflow follows these key steps:

1. **Trigger**: The workflow is triggered by specific events like a new entry in a SharePoint list or an email.
2. **Azure AD User Creation**: Utilizing the Azure AD connector, a new user is automatically created based on trigger details.
3. **Role and Group Assignment**: Predefined roles and groups are assigned to the user based on job position or department.
4. **Resource Provisioning**: Azure resources are provisioned using the Azure Resource Manager connector.
5. **Welcome Email**: A welcome email with access details is sent to the new hire via the Email connector.
6. **Monitoring and Review**: The process is monitored through Logic Apps runs history and Azure AD logs.

## Getting Started

To get started with this project, follow these steps:

1. Clone this repository: `https://github.com/AnthonyByansi/Azure-HR_Onboarding-Logic.git`
2. Navigate to the appropriate directories for infrastructure and workflow.
3. Configure the Logic App workflow and update IaC templates with your specific requirements.

## Deployment

1. Deploy the IaC templates using Terraform or ARM templates located in the `infrastructure/` directory.
2. Deploy the Logic App workflow through the Azure portal, connecting the necessary connectors and configuring triggers.

## Monitoring and Troubleshooting

- Monitor the Logic App's run history in the Azure portal.
- Review Azure AD logs for user creation and role assignments.

## Contributing

Contributions to this project are welcome! Feel free to open issues or pull requests for enhancements, bug fixes, or new features.

## License

This project is licensed under the [MIT License](LICENSE).

_Byansi Anthony_

---

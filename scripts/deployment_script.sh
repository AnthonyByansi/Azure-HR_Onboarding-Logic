#!/bin/bash

# Terraform deployment
cd infrastructure/
terraform init
terraform apply -auto-approve

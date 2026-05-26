# Hospitality-hunter

# Hospitality Hunter - Cloud Data Platform CI/CD

This project demonstrates a modern DevOps CI/CD pipeline for a cloud-based data platform using GitHub Actions, Terraform, SQL validation, and DevSecOps security scanning.

## Features

- GitHub Actions CI/CD pipeline
- Terraform validation and planning
- SQL validation
- tfsec security scanning
- AWS S3 infrastructure provisioning
- S3 security hardening
  - Versioning enabled
  - Encryption enabled
  - Public access blocked

## Technologies Used

- AWS
- Terraform
- GitHub Actions
- tfsec
- SQL

## CI/CD Workflow

The pipeline automatically:

1. Validates SQL scripts
2. Initializes Terraform
3. Validates Terraform configuration
4. Runs tfsec security scans
5. Executes Terraform plan

## Security Improvements

The project demonstrates fixing common S3 security findings:
- Block public access
- Enable encryption
- Enable versioning

## Future Improvements

- Add AWS OIDC authentication
- Add multi-environment deployment
- Add Redshift resources
- Add approval workflows
- Add Terraform apply stage

## Security Scan Note

tfsec reports one remaining medium finding for access logging on the logging bucket itself.  
For this demo project, this is accepted because the primary data bucket already sends access logs to the dedicated logging bucket.
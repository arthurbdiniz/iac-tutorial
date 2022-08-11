# Terraform Apache Web Server

This chart is responsible to deploy apache web services in AWS cloud. The **Linux** image used was `Amazon Linux 2 AMI (HVM), SSD Volume Type` deployed on `sa-east-1` region. To allow conections to the VM one `aws_security_group` was created giving ingress on ports **80 (HTTP)** and **22 (SSH)**.

The shell script to configure the VM: `apache.sh`.

#### Dependencies

- AWS CLI
- Terraform
- [asdf](https://asdf-vm.com/) (optional)

#### Region

- sa-east-1

#### Init

```bash
terraform init
```

#### Plan

```bash
terraform plan
```

#### Apply
```bash
terraform apply
```

#### Destroy
```bash
terraform destroy
```

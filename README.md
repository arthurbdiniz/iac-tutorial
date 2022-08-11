# iac-tutorial

#### Dependencies
- AWS CLI
- Terraform
- npm
- Docker
- [asdf](https://asdf-vm.com/) (optional)

#### Configure asdf

```bash
make asdf
```

#### Configure AWS CLI

```bash
aws configure --profile unb
# or
aws configure --profile unb-admin

# AWS Access Key ID: ...
# AWS Secret Access Key: ...
# Default region name: s... <sa-east-1>

export AWS_PROFILE=unb
# or
export AWS_PROFILE=unb-admin
```

#### Demos

- [ansible](ansible/README.md)
- [apache](apache/README.md)
- [cdk](cdk/README.md)
- [docker](docker/README.md)
- [s3](s3/README.md)
- [spotify](spotify/README.md)
- [ssm](ssm/README.md)
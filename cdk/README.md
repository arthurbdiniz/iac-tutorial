# AWS CDK

This chart is responsible to deploy a S3 bucket using AWS CDK.

#### Dependencies
- AWS CLI
- AWS CDK
- Terraform

#### Region
- sa-east-1

#### Install AWS CDK

```bash
npm install -g aws-cdk
```

#### Python Virtual Environment

```bash
# Create environment
python3 -m venv venv

# To activate the environment
source venv/bin/activate

# When you finish you can exit typing
deactivate
```

#### Install requirements

```bash
pip install -r requirements.txt
```

#### Environment Variables

```bash
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_DEFAULT_REGION=""
```

#### Bootstrap

```bash
cdk bootstrap aws://<account-id>/<region>
```

#### Plan

```bash
cdk synthesize
```

#### Apply

```bash
cdk deploy
```

#### Destroy

```bash
cdk destroy
```

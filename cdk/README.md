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

#### Check Chart
```bash
$ cdk synthesize
```

#### Deploy
```bash
$ cdk deploy
```

#### Destroy
```bash
$ cdk destroy
```

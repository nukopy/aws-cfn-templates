# AWS CloudFormation Templates

In this repository, AWS CloudFormation(CFn) templates to deploy primary AWS resources are provided.

AWS resources are like below:

- [x] Amazon VPC
- [ ] Amazon VPC + Amazon EC2
- [ ] Amazon VPC + Amazon EC2 + RDS
- [x] Amazon ECR

---

## Environment Setup

Environment setup steps are as below:

1. Create your AWS account
2. Create appropriate IAM user with narrowed permissions
3. Get Access Key / Secret Access Key of your IAM user in the step 2
4. Set AWS CLI profile with keys obtained in the step 3
   - your profile name set to AWS CLI is used in the next step
5. Set Environmental Variables like below:
   - [direnv](https://direnv.net/) is useful to set environment variables quickly in the local environment

```sh
export AWS_PROFILE="test-iam-user"  # use profile name used in step 4
export ProjectName="test-app"
export Env="dev"export Prefix="${ProjectName}-${Env}"
```

Now, you can deploy AWS resources using deploy scripts in this repository.

---

## Deploy

### Amazon VPC

- Architecture
  - VPC + API Gateway
  - AZ 1
    - Public Subnet 1
    - Private Subnet 1
  - AZ 2
    - Public Subnet 2
    - Private Subnet 2

Execute deploy script as following:

```sh
cd aws-cfn-templates/
sh ./scripts/deploy-vpc.sh
```

In the VPC page of the AWS console, you can make sure VPC settings: VPC, Public / Private Subnet associated with Route Table.

### Amazon VPC + Amazon EC2

TODO

### Amazon VPC + Amazon EC2 + RDS

TODO

### Amazon ECR

- Architecture
  - ECR Repository

Execute deploy script as following:

```sh
sh ./scripts/deploy-ecr.sh
```

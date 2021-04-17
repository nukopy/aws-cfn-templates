#!/bin/bash

aws cloudformation deploy \
  --stack-name "${ProjectName}-${Env}-vpc-cfn" \
  --template "./templates/vpc.yml" \
  --parameter-overrides \
    ProjectName="${ProjectName}" \
    Env="${Env}"

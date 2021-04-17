#!/bin/bash

aws cloudformation deploy \
  --stack-name "${ProjectName}-${Env}-ecr-cfn" \
  --template "./templates/ecr.yml" \
  --parameter-overrides \
    ProjectName="${ProjectName}" \
    Env="${Env}"
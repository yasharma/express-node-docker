#!/usr/bin/env bash

configure_aws_cli(){
	aws --version
	aws configure set default.region us-east-1
	aws configure set default.output json
}

tag_ecr_image(){
	configure_aws_cli
	eval $(aws ecr get-login --region us-east-1 --no-include-email)
	docker tag dockerapp-production:latest 881047829880.dkr.ecr.us-east-1.amazonaws.com/dockerapp-production:latest
    docker push 881047829880.dkr.ecr.us-east-1.amazonaws.com/dockerapp-production:latest
	#docker push $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/steward-ecr:$CIRCLE_SHA1
}

tag_ecr_image
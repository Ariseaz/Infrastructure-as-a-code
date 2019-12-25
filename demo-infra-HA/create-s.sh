aws cloudformation create-stack \
--stack-name $1 \
--template-body file://demoservers.yml \
--parameters file://demoservers-params.json \
--region=us-west-2
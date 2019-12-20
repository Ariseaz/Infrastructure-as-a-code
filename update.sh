aws cloudformation update-stack \
--stack-name $1 \
--template-body file://ourinfra.yml \
--parameters file://ourinfra-params.json \
--region=us-west-2
aws cloudformation update-stack \
--stack-name $1 \
--template-body file://db-rds.yml \
--parameters file://db-rds-params.json \
--region=us-west-2
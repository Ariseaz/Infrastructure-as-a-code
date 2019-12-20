# Infrastructure-as-a-code
CloudFormation yaml, Teraform tf

# This cmd create-stack performs the operation of running the testfcn.yml file operation on aws to create an EC2 VPC
aws cloudformation create-stack --stack-name ourfirsttest --region us-west-2 --template-body file://testcfn.yml

# Clean write of the above cmd
aws cloudformation create-stack 
--stack-name myfirsttest 
--region us-west-2 
--template-body testcfn.yml

# When calling AWS CloudFormation, you’ll pass in the name of the .yml file as well as the name of the parameter file as parameters to the CloudFormation call.
aws cloudformation create-stack --stack-name MyStack --template-body file://MyCloudformationScript.yml  --parameters file://MyEnvironmentVariables.json 
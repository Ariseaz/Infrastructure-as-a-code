WebAppLaunchConfig:
    Type: AWS::AutoScaling::LaunchConfiguration
    Properties:
      UserData:
        Fn::Base64: !Sub |
          #!/bin/bash
          apt-get update -y
          apt-get install unzip awscli -y
          apt-get install apache2 -y
          systemctl start apache2.service
          cd /var/www/html
          aws s3 cp s3://udacity-demo-1/udacity.zip .
          unzip -o udacity.zip
      ImageId: ami-06d51e91cea0dac8d
      KeyName:  test-instance-udacity-cloudformation
      IamInstanceProfile: !Ref ProfileWithRolesForOurApp
      SecurityGroups:
      - Ref: WebServerSecGroup
      InstanceType: t2.micro
      BlockDeviceMappings:
      - DeviceName: "/dev/sda1"
        Ebs:
          VolumeSize: '10'
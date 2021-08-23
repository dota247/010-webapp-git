#!/bin/bash
sudo yum install -y httpd
sudo yum upgrade -y
sudo yum install ruby -y
sudo yum install wget -y
sudo mkdir -p /home/ec2-user/jmanage/codedeploy
sudo wget https://aws-codedeploy-eu-central-1.s3.amazonaws.com/latest/install -P /home/ec2-user/jmanage/codedeploy/
sudo chmod +x /home/ec2-user/jmanage/codedeploy/install
sudo /home/ec2-user/jmanage/codedeploy/install auto
sudo service codedeploy-agent status


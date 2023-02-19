#! /bin/bash
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done
sudo apt remove awscli -y
sudo pip3 install awscli
sudo groupadd docker
sudo usermod -aG docker jenkins
eval $(aws-export-credentials --env-export)
$(aws ecr get-login --region us-east-1 --no-include-email)

docker pull $ECR_REPOSITORY:$CONTAINER_NAME
twistcli sandbox --address $PCC_CONSOLE_URL --token=$token $ECR_REPOSITORY:$CONTAINER_NAME
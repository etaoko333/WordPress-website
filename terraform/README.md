# 1 Setup Terraform & AWS CLI 
- windows & linux terraform download reference : https://developer.hashicorp.com/terraform/install
- windows & linux AWS CLI download reference : https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

# 2 Same Update on eraser.io 
- This is the URL : https://app.eraser.io/workspace/mjGcbzkKJL4J7E5VcGOE?origin=share

# Installing 
- Windows installing :- https://developer.hashicorp.com/terraform/install
- Linux installing :- commands https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
- commands: 
  - 1 sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
  
 - 2 wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
  
 - 3 Verify the key's fingerprint :
     gpg --no-default-keyring \
     --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
     --fingerprint

 - 4 echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

  - 5 sudo apt update

  - 6 sudo apt-get install terraform

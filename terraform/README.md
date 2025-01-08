# 1 Setup Terraform & AWS CLI 
- windows & linux terraform download reference : https://developer.hashicorp.com/terraform/install
- windows & linux AWS CLI download reference : https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

# 2 Same Update on eraser.io 
- This is the URL : https://app.eraser.io/workspace/mjGcbzkKJL4J7E5VcGOE?origin=share

# Installing 
- Windows installing :- https://developer.hashicorp.com/terraform/install
- Linux installing :- commands https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
- commands: 
  1 sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
  
  2 wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
  
  3 Verify the key's fingerprint :
     gpg --no-default-keyring \
     --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
     --fingerprint

  4 echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

  5 sudo apt update

  6 sudo apt-get install terraform

# Generate ssh-keygen 
  - use ssh-keygen
  - type pwd for checking current location 
  - give the location path home\burhan\web\WordPress\terraform\ecommerce-key
  - enter
  - enter
# Terraform Commands
  - # terraform init 
  - burhan@Hensex:~/web/WordPress/terraform$ terraform init
    Initializing the backend...
    Initializing provider plugins...
    Finding hashicorp/aws versions matching "5.78.0"...
    Installing hashicorp/aws v5.78.0...

  - # terraform plan
  - Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols: create
 
  - # terrafrom apply 
  - data.aws_ami.os_image: Reading... data.aws_ami.os_image: Read complete after 2s [id=ami-05e59bb67a6c4abc0]

  - # terrafrom Destroy 
  - Destroy complete! Resources: 4 destroyed.
  - ![image](https://github.com/user-attachments/assets/91d1de81-9753-4daa-b815-2d15c25f96f3)
  - ![image](https://github.com/user-attachments/assets/8bb966b4-a2ce-4a00-96a1-694c758ddd57)



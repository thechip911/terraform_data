run below command for launching ec2 via terraform

```bash
terraform init
terraform plan
terraform apply
```

connect to install via ssh

```bash
ssh -i infra_payme_mach_x ubuntu@10.10.131.194
```

Jenkins is Installed via docker-compose

```bash
docker-compose -f jenkins.yml up -d
```

Install Java and Python on ubuntu via below commands
    
```bash
sudo apt-get update
sudo apt-get install default-jdk
sudo apt-get install python3
sudo apt-get install python3-pip
sudo apt-get install python3-venv
```

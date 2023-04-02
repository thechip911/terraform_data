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



Deploye Jenkins via below command

```bash
docker compose -f jenkins.yml up -d
```

open and setup jenkins

the code can be tracked in git repo

the application is available at docekr hub

```bash
docker pull thechip911/test_django
```

the and it can be deployed via
```bash
docker run -p 8000:8000 thechip911/test_django
```


the pipeline code for jenkins to deploye above image will be

```groovy
pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
				sh 'docker build -t thechip911/test_django .'
			}
		}
		stage('Test') {
			steps {
				sh 'docker run -p 8000:8000 thechip911/test_django'
			}
		}
		stage('Deploy') {
			steps {
				sh 'docker push thechip911/test_django'
			}
		}
	}
}
```
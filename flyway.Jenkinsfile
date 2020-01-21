pipeline {

	agent any

	options {
		skipDefaultCheckout true
	}

	stages {

		stage('checkout') {
			steps {
				checkout scm
			}
		}

		stage('build') {
			steps {
				sh "docker build --file Dockerfile  --tag flyway:testing"
				sh "docker tag flyway:testing 516340033591.dkr.ecr.us-east-2.amazonaws.com/flyway:testing"
			}
		}
		
		stage('push') {
			steps {
				sh "aws ecr get-login --no-include-email --region us-east-2 > awsecrlogin.sh"
				sh "sh awsecrlogin.sh"
				sh "docker push 516340033591.dkr.ecr.us-east-2.amazonaws.com/flyway:testing"
			}
		}

		}
	
}


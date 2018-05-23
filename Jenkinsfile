#pipeline {
#    agent {
#        docker { image 'node:7-alpine' }
#    }
#    stages {
#        stage('Test') {
#            steps {
#                sh 'node --version'
#            }
#        }
#    }
#}
#
node("docker-test") {
  checkout scm

  stage("Unit Test") {
    sh "docker service create --publish 80:8008 --name hello_cicd httpd:latest"
  }
}

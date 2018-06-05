pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 3000:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'bash ./jenkins/build.sh'
            }
        }
        stage('Test') {
            steps {
                sh 'bash ./jenkins/test.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh 'bash ./jenkins/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'bash ./jenkins/kill.sh'
            }
        }
        stage('Deploy - Production') {
            steps {
                sh 'bash ./jenkins/deploy.sh'
            }
        }
    }
}

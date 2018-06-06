pipeline {
    agent {
        docker {
            image 'node:6'
            args '-p 3000:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh './jenkins/build.sh'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/test.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh './jenkins/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/kill.sh'
            }
        }
        stage('Deploy - Production') {
            steps {
                sh './jenkins/deploy.sh'
            }
        }
    }
}

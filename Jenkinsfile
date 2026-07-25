pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Debug Workspace') {
            steps {
                bat 'whoami'
                bat 'dir'
                bat 'dir packages'
            }
        }

        stage('Run Tests') {
            steps {
                bat 'robot --console verbose --outputdir results package_test.robot'
            }
        }
    }
}
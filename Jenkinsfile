pipeline {
    agent any

    stages {

        stage('Checkout Stuff from Git') {
            steps {
                checkout scm
            }
        }

        stage('Run Tests') {
            steps {
                bat 'C:\\Python313\\python.exe -m robot --outputdir results package_test.robot'
            }
        }
    }
}
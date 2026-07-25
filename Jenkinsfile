pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Pulls the code from your repository
                checkout scm
            }
        }
        stage('Run Tests') {
            steps {
                        bat '''
        robot --console verbose --outputdir results package_test.robot
        '''
            }
        }
    }
}
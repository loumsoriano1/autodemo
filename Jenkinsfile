pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Pulls the code from your repository
                checkout scm
            }
        }
		stage('Debug Workspace') {
			steps {
				bat 'whoami'
				bat 'dir'
				bat 'dir packages'
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
}
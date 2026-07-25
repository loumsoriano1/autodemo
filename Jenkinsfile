pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }
		stage('Find Python') {
			steps {
				bat 'dir C:\\Python313'
				bat 'dir C:\\Python313\\Scripts'
			}
		}
	stage('Debug Python') {
			steps {
				bat 'python --version'
				bat 'python -m robot --version'
				bat 'python -m pip show robotframework'
			}
		}
		
		stage('Debug Robot Environment') {
			steps {
				bat 'whoami'
				bat 'where robot'
				bat 'robot --version'
				bat 'where python'
				bat 'python --version'
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
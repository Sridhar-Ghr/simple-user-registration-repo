pipeline {
    agent any
    environment {
        IMAGE_NAME = "user-registration-app"
        CONTAINER_NAME = "user-registration-container"
    }
    stages {
        stage('Clone Repo') {
            steps {
                git branch main'https://github.com/Sridhar-Ghr/simple-user-registration-repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Run Container') {
            steps {
                // Stop old container if running
                bat 'docker rm -f %CONTAINER_NAME% || echo Container not found'

                // Run new container
                bat "docker run -d -p 8081:80 --name %CONTAINER_NAME% %IMAGE_NAME%"
            }
        }
    }
}

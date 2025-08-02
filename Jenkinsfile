pipeline {
    agent any
    environment {
        IMAGE_NAME = "user-registration-app"
    }
    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Sridhar-Ghr/simple-user-registration-repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Container') {
            steps {
                // Stop old container if running
                sh 'docker rm -f $IMAGE_NAME || true'
                // Run new container
                sh '''
                docker run -d \
                    --name $IMAGE_NAME \
                    -p 8081:80 \
                    $IMAGE_NAME
                '''
            }
        }
    }
}

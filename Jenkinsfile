pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from your repository
                checkout scm
            }
        }
        
        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    docker.image('php:7.4-fpm').inside('-v /var/run/docker.sock:/var/run/docker.sock') {
                        sh 'composer install'
                        sh 'docker build -t my-laravel-app .'
                    }
                }
            }
        }
     
    }
}

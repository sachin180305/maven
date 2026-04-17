pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Build with Maven') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t maven-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run --rm maven-app'
            }
        }
    }
}
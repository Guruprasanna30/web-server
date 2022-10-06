pipeline {
    agent any
    environment {
        gitName = "guruprasanna30"
    }
    stages {
        stage('Docker build webserver image') {
            steps {
                sh 'sudo docker build -t $gitName/web-server:""$BUILD_NUMBER"" .'
            }
        }
        stage('Docker image webserver push') {
            steps{
                withDockerRegistry([credentialsId: "dockerhub", url: "https://index.docker.io/v1/"]) {
                    sh 'sudo docker push $gitName/web-server:""$BUILD_NUMBER""'
                }
            }
        }
    }
}
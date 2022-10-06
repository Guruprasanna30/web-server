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
                withDockerRegistry([credentialsId: "dockerhub", url: ""]) {
                    sh 'sudo docker push $gitName/web-server:""$BUILD_NUMBER""'
                }
            }
        }
    }
}
pipeline {
    agent any
    environment {
        gitName = "guruprasanna30"
        DOCKERHUB_CREDENTIALS=credentials('dockerhub')
    }
    stages {
        stage('Docker build webserver image') {
            steps {
                sh 'sudo docker build -t web-server:""$BUILD_NUMBER"" .'
                sh 'sudo docker tag web-server:""$BUILD_NUMBER"" $gitName/web-server:""$BUILD_NUMBER""'
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
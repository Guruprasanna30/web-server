pipeline {
    agent any
    environment {
        gitName = "guruprasanna30"
        DOCKERHUB_CREDENTIALS=credentials('dockerhub')
    }
    stages {
        stage('Docker build webserver image') {
            steps {
                sh 'sudo docker build -t $gitName/web-server:""$BUILD_NUMBER"" .'
            }
        }
        stage ('Login'){
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Docker image webserver push') {
            steps{
                //withDockerRegistry([credentialsId: "dockerhub", url: "https://index.docker.io/v1/"]) {
                    sh 'sudo docker push $gitName/web-server:""$BUILD_NUMBER""'
                //}
            }
        }
    }
}
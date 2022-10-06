pipeline {
    agent any
    environment {
        gitName = "guruprasanna30"
        imageName = "${gitName}/web-server:${BUILD_NUMBER}"
        deploymentName = "devsecops"
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
        stage('Deploy in Kubernetes') {
            steps {
                withKubeConfig([credentialsID: 'kubeconfig']){
                    sh "bash k8s-deployment.sh"
                }
            }
        }
    }
}
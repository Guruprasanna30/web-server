pipeline {
    agent any
    environment {
        gitName = "guruprasanna30"
    }
    stages {
        //added a stage 1
        stage('Docker build image') {
            steps {
                sh 'sudo docker build -t $gitName/webs-erver:""$BUILD_NUMBER"" .'
            }
        }
    }
}
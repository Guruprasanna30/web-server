pipeline {
    agent any
    environment {
        gitName = "guruprasanna30"
    }
    stages {
        //
        stage('Docker build image') {
            steps {
                sh 'sudo docker build -t $gitName/webs-erver:""$BUILD_NUMBER"" .'
            }
        }
    }
}
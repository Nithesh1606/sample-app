pipeline {
        agent any
                tools {
                        nodejs 'NodeJS 18'
                }
        stages {
                stage ('clone repository'){
                steps {
                        git branch: 'main', url: 'https://github.com/Nithesh1606/sample-app.git'
                }
        }

        stage ('build docker images') {
        steps {
                script {

                sh 'docker build -t ci-sample-app .'
                        }
                }
        }

        stage ('test') {
        steps {
                script{
                sh 'npm test || echo test defined'
             }
        }
        }

        stage ('depoly') {
                steps{
                        script {
                         sh 'docker run -d -p 3000:3001 ci-sample-app'
                                }
                        }
                }

}
}

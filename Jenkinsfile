pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building the project...'
                sh 'mvn clean package'
            }
            post {
                success {
                    echo 'Build success'
                    archiveArtifacts artifacts: '**/target/*.war', onlyIfSuccessful: true
                }
                failure {
                    echo 'Build failed'
                }
            }
        }
        stage('Deploy to Tomcat')  {
            steps {
                echo 'Deploying the project...'
               deploy adapters: [tomcat9(credentialsId: 'tomcat-key', path: '', url: 'http://18.119.29.165:8080/')], contextPath: null, war: '**/*.war'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing the project...'
                // Add your test steps here
            }
        }
    }
}

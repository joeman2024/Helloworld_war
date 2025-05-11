gi pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/joeman2024/Helloworld_war.git'
        }
      }
      stage('test'){
        steps {
            sh 'mvn test'
        }
      }
      stage("compile"){
        steps {
            sh 'mvn compile'
        }
      }
      stage ('scan'){
        steps {
            sh 'trivy fs .'
        }
      }
  }
}

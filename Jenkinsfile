pipeline {
    agent any
    tools{
        maven 'maven'
        jdk 'jdk17' ------------------------------------------------------------
    }
    environment{
        SCANNER_HOME = tool 'sonar-scanner'
    }
    stages {
        stage('git checkout') {
            steps {
             git url:'https://github.com/joeman2024/Helloworld_war.git'
            }
        }
        stage('compile') {
            steps {
             sh 'mvn compile'
            }
        }
         stage('test') {
            steps {
             sh 'mvn test'
            }
        }
         stage('file system scan') {
            steps {
             sh 'trivy fs --format table -o scan-results.html .'
            }
        }
         stage('sonarQube Analysis') {
            steps {
             withSonarQubeEnv('sonar-server') {
          sh  'mvn sonar:sonar'
                  }
            }
        }
         stage('Build code') {
            steps {
             sh 'mvn clean package'
              }
         }
        stage('deploy to Artifact to Nexus') {
            steps {
             sh 'mvn clean package'
            }
        }
    }
}

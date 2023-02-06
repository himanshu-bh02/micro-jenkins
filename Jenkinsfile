pipeline{
    agent any
    stages{
        stage("build maven"){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/himanshu-bh02/micro-jenkins.git']])
                bat 'mvn clean install -DskipTests'
            }
        }
        stage("test and deployment"){
            steps{
                bat 'mvn test'
            }
        }
        stage("build docker image"){
            steps{
                bat 'docker build -t micro-jenkins .'
            }
        }
    }
}
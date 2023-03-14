pipeline {
    agent { label 'JDK_8' }
    triggers { pollSCM ('* * * * *') }
    stages {
        stage('vcs') {
            steps {
                git url: 'https://github.com/qtrajkumarmarch23/spring-petclinic.git',
                    branch: 'main'
            }
        }
        stage('image build') {
            steps {
                //sh "mvn ${params.MAVEN_GOAL}"
                sh 'docker image build -t rajkumar207/spcfor:latest .'
            }
        }
        stage('scan and push') {
            steps {
                sh 'docker image push rajkumar207/spcfor:latest'
            }
        }
    }
}

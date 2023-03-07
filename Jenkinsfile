pipeline  {
    agent { label 'JDK_8' }
    parameters {
        choice(name: 'MAVEN_GOAL', choices: ['package', 'install', 'clean'])
    }
    stages {
        stage('vcs') {
            steps {
                git url: 'https://github.com/qtrajkumarmarch23/spring-petclinic.git',
                    branch: 'main'
            }
        }
        stage('package') {
            tools {
                jdk 'JDK_17'
            }
            steps {
                sh "mvn ${params.MAVEN_GOAL}"
            }
        }
        stage('post build') {
            steps {
                archiveArtifacts artifacts: '**/target/spring-petclinic.war',
                                 onlyIfSuccessful: true
                junit testResults: '**/surefire-reports/TEST-*.xml'                 
            }
        }
    }
}

pipeline {
  agent any

  triggers { pollSCM('* * * * *') }

  tools { nodejs "node12" }

  stages {
    stage('Notify') {
      steps {
        slackSend message: "Build Started - ${env.JOB_NAME} with buildnumber ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
        sh 'env'
      }
    }

    stage('Install Dependencies') {
      steps {
        sh 'npm i'
      }
    }

    stage('Test') {
      steps {
        sh 'npm run test:headless'
      }
    }

    stage('Build') {
      steps {
        sh 'npm run build'
      }
    }

    stage('Deploy') {
      when { branch 'master' }

      steps {
        echo "Need to implemtent 'Deploy' stage."
        sh 'firebase deploy --only hosting --token "$FIREBASE_TOKEN"'
      }
    }
  }

  post {
    success {
      slackSend color: 'good', message: "*SUCCESS:* ${env.JOB_NAME} with buildnumber ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
    }
    failure {
      slackSend color: 'danger', message: "*FAILURE:* ${env.JOB_NAME} with buildnumber ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
    }
    aborted {
      slackSend color: 'warning', message: "*ABORTED:* ${env.JOB_NAME} with buildnumber ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
    }
    unstable {
      slackSend color: 'warning', message: "*UNSTABLE:* ${env.JOB_NAME} with buildnumber ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
    }
    always {
      cleanWs()
    }
  }

}

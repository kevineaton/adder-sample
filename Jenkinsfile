pipeline {

  stages {

    stage('build') {
      steps {
        sh 'go build'
      }
    }

    stage('test') {
      steps {
        sh 'go test ./...'
      }
    }
  }

}
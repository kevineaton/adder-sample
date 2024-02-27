pipeline {
  agent any

  stages {

    stage('build') {
      steps {
        echo "Building..."
        sh 'go build'
      }
    }

    stage('test') {
      steps {
        echo "Testing..."
        sh 'go test ./...'
      }
    }
  }

}

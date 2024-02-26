pipeline {
  agent any
  options {
    ansiColor('xterm')
    disableConcurrentBuilds()
  }

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
// vim: ft=groovy et ai ts=2 sts=2 sw=2 nowrap
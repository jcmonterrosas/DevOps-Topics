pipeline {
  agent any
  stages {
    stage('Planning') {
      steps {
        jiraComment(issueKey: '1', body: 'add comment')
      }
    }

  }
  environment {
    test = 'test1'
  }
}
pipeline {
  agent any
  stages {
    stage('Planning') {
      steps {
        jiraComment(issueKey: '1', body: 'add comment')
      }
    }

    stage('Building User Module') {
      parallel {
        stage('Atentication User Module') {
          steps {
            build(job: 'Crear modulo de autenticacion', quietPeriod: 2)
          }
        }

        stage('Profile Module') {
          steps {
            build 'Profile user'
          }
        }

        stage('Financial module') {
          steps {
            build 'Finanzas'
          }
        }

      }
    }

    stage('User Management Module ') {
      steps {
        build 'Tokens generate'
      }
    }

  }
  environment {
    test = 'test1'
  }
}
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
            echo 'Crear modulo de autenticacion'
          }
        }

        stage('Profile Module') {
          steps {
            echo 'Profile user'
          }
        }

        stage('Financial module') {
          steps {
            echo 'Finanzas'
          }
        }

      }
    }

    stage('User Management Module ') {
      steps {
        echo 'Tokens generate'
      }
    }

    stage('Test') {
      parallel {
        stage('Funtional production') {
          steps {
            echo 'pruebas funcionales de producto'
          }
        }

        stage('Integration production') {
          steps {
            echo 'pruebas de integracion'
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        echo 'Despliegue'
      }
    }

  }
  environment {
    test = 'test1'
  }
}
pipeline {
  agent {
        dockerfile {
        dir "./"
        }
    }
  stages {
    stage('Test') {
      steps {
        sh '''
        df
        '''
      }
    }
  }
   post {
        unsuccessful {
            script {
                emailext (
                    to: '${DEFAULT_RECIPIENTS}',
                    subject: '${PROJECT_NAME} - Build # ${BUILD_NUMBER} - ${BUILD_STATUS}!"',
                    body: '${PROJECT_NAME} - Build # ${BUILD_NUMBER} - ${BUILD_STATUS}: Check console output at ${BUILD_URL} to view the results.'
                )
            }
        }
    }
}
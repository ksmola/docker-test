pipeline {
  agent { dockerfile true }
  stages {
    stage('Test') {
      steps {
        sh '''
        lsusb |grep STM
        python3 /dst/run_tests.py
        '''
      }
    }
  }
}
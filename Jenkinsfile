pipeline {
  agent { dockerfile true }
  stages {
    stage('Test') {
      steps {
        sh '''
        cat /etc/os-release
        python3 /dst/run_tests.py
        lsusb |grep STM
        '''
      }
    }
  }
}
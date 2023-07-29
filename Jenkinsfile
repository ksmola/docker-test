pipeline {
  agent { dockerfile true }
  stages {
    stage('Test') {
      steps {
        sh '''
        cat /etc/os-release
        lsusb |grep STM
        python3 /dst/run_tests.py
        arm-none-eabi-gdb -v
        '''
      }
    }
  }
}
pipeline {
  agent { dockerfile true }
  stages {
    stage('Test') {
      steps {
        sh '''
	  arm-none-eabi-gdb -v
	  lsusb |grep STM
	  python3 /dst/run_tests.py
        '''
      }
    }
  }

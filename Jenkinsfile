pipeline {
  agent any 
      stages {
        stage("One") {
          steps {
            echo "Stage 1"
          }
        }
        stage("Two") {
          steps {
            echo "Stage 2"
          }
        }
        stage("Unit Test") {
          steps {
            sh 'python3 ./tests/index.py'    
            
          }
        }      
      }
}
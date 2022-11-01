def config = [:]
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                config = readProperties, file: 'variable'
                git branch: "$config.git_branch", url: "$config.Git_url"
            }
        }
      stage('checkin'){
        steps{
          echo "$config.DB_file"
        }
      }
    }
}

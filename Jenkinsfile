pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                echo 'Cloning source code...'
                checkout scm
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running test script...'
                sh './test.sh'
            }
        }

        stage('Deploy HTML') {
            steps {
                echo 'Moving HTML to Jenkins workspace...'
                publishHTML([ 
                  reportDir: '.', 
                  reportFiles: 'index.html', 
                  reportName: 'Product Page'
                ])
            }
        }
    }

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}

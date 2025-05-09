pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/reshreshu/devops_final_.git'
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running test script...'
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }

        stage('Build HTML Page') {
            steps {
                echo 'Copying HTML and CSS to workspace...'
                sh 'mkdir -p output && cp index.html style.css output/'
            }
        }

       stage('Archive HTML') {
            steps {
                archiveArtifacts artifacts: 'output/index.html', fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'Pipeline finished successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the logs.'
        }
    }
}

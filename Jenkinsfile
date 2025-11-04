pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Random139/new.git'
            }
        }

        stage('Deploy to EC2') {
            steps {
                sshagent(['EC2_KEY']) {
                    sh """
                    ssh -o StrictHostKeyChecking=no ubuntu@34.230.92.149 'rm -rf /home/ubuntu/app'
                    ssh ubuntu@34.230.92.149 'mkdir /home/ubuntu/app'
                    scp * ubuntu@34.230.92.149:/home/ubuntu/app/
                    ssh ubuntu@34.230.92.149 'chmod +x /home/ubuntu/app/deploy.sh'
                    ssh ubuntu@34.230.92.149 '/home/ubuntu/app/deploy.sh'
                    """
                }
            }
        }
    }
}

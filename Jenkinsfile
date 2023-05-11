pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
            gitCheckout(
            branch: "main",
            url: ""
            )
        
            }
        }
    
        stage ("terraform init") {
            steps {
                sh "terraform init -reconfigure" 
            }
        }
        
        stage ("plan") {
            steps {
                sh "terraform plan" 
            }
        }

        stage (" Action") {
    steps {
        echo "Terraform action is --> ${action}"
        sh "terraform $action --auto-approve"
    }
}
    }
}

pipeline {
    agent any

    environment {
    TOKEN = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnQiOiJiNmNhZGQwNS1lMzQxLTNmMTctYjU1Zi00OTM0MTI4MWQ4MmEiLCJhY2NvdW50SWQiOiI3MTIwMjA6ZjY5MGZhNzItZDEwZi00ZDA3LWI1MzUtZjZmMTEyNWFjMmIxIiwiaXNYZWEiOmZhbHNlLCJpYXQiOjE3NzA4MDM0NjEsImV4cCI6MTc3MDg4OTg2MSwiYXVkIjoiQjBGM0UyQ0RFQzkwNDc3NTlDRkI5RTdFRTQ1QkZGMzgiLCJpc3MiOiJjb20ueHBhbmRpdC5wbHVnaW5zLnhyYXkiLCJzdWIiOiJCMEYzRTJDREVDOTA0Nzc1OUNGQjlFN0VFNDVCRkYzOCJ9.6bYj3pf2hNbjc8AMzIGTT45u0h3CWEAhGfhgs2pfBNo"
    }

    parameters {
    string(name: 'SELENIUM_BROWSER', defaultValue:'CHROME')
    string(name: 'TEST_PLAN', defaultValue:'POEI2-1060')

    }


    stages {
    
                
        stage('Checkout') {
            steps {
                // Si ton projet n'est PAS sur Git, on saute cette étape
                echo 'Projet local - pas de checkout Git'
            }
        }

        stage('Build & Test') {
            steps {
                echo 'Execution des tests RobotFramework via Maven...'
                    bat 'robot -d results MINI_PROJET_RBF/'
            }
        }

    }

    post {

        always {
        bat 'curl -H "Content-Type: text/xml" -X POST -H "Authorization: Bearer %TOKEN%"  --data @"results/output.xml" https://xray.cloud.getxray.app/api/v1/import/execution/robot?projectKey=POEI25'
        }

        success {
            echo 'Tests exécutés avec succès 🎉'
        }

        failure {
            echo 'Des tests ont échoué ❌'
        }
    }
    }

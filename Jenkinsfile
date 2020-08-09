pipeline {
  environment {
    registry = "sivaramloknath64/petclinic"
    registryCredential = 'docker_hub_loknath'
    dockerImage = ''
  }
  agent any
  stages{
    stage ('Build') {
      steps{
        echo "Building the  Project"
        sh './mvnw package'
      }
    }
    stage ('Archive') {
      steps{
        echo "Archiving the  Project"
        archiveArtifacts artifacts: '**/*.jar', followSymlinks: false
      }
    }

    stage ('Build Docker Image') {
      steps{
        echo "Building Docker Image"
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

    
    stage ('Push Docker Image') {
      steps{
        echo "Pushing Docker Image"
        script {
          docker.withRegistry( '', registryCredential ) {
              dockerImage.push()
              dockerImage.push('latest')
          }
        }
      }
    }
    
    
    
    stage ('Push Docker Image') {
      steps{
        echo "Pushing Docker Image"
        script {
     sh "docker rm -f petclinic || true"
     sh " docker run -d --name=petclinic -p 8081:8080 sivaramloknath64/petclinic"     
              
        }
        }
      }
    }
    
    
    
    
    
    
    
    
}

}


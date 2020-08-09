pipeline {
  
  environment{
  
    registry="sivaramloknath64/petclinic"
    registryCredential="docker_hub_loknath"
    dockerImage=""  
  }
  
  
agent any

stages{


stage('build'){

steps{
echo 'building the project'
  sh './mvnw package'
}

}



stage('Archive'){

steps{
echo 'Archiving the project'
  archiveArtifacts artifacts: '**/*.jar', followSymlinks: false
}

}



stage('building docker image'){

steps{
echo 'building the docker image'
  script{
    dockerImage=docker.build registry +':$BUILD_NUMBER'
  } 
  
}

}




stage('pushing the docker image'){

steps{
echo 'pushing the docker image'
  script{
  
  
  
  }
  
  
}

}

stage('deploy to dev Env'){

steps{
echo 'deploying the dev environment'

}

}







}



}

pipeline {
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
}

}




stage('pushing the docker image'){

steps{
echo 'pushing the docker image'
}

}

stage('deploy to dev Env'){

steps{
echo 'deploying the dev environment'

}

}







}



}

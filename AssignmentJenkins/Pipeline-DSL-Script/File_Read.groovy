node {
    stage('build') {
        echo "Build Successfull"
    }
    stage('test')
    {
        echo "testing Succesfull"
    }
    stage('deploy')
    {
        echo "Deploying.."
    }
}
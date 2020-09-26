#!groovy
def name
def changelog
node{
    stage("checkout"){
        checkout(scm)
        echo "Cloning completed"
    }
    stage("test1"){
        echo "test1"
        command = "git log --oneline --pretty='%s'"
        return sh(script: command, returnStdout: true)
    }
    stage("test2"){
        echo "test2"
    }
}

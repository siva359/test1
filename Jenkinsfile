#!groovy
def name
def changelog
def fun1(){
    echo "testing my last case"
}
def environment
node{
    parameters {
        string(name: 'environment', description: 'tell me where i am')
    }
    stage("checkout"){
        checkout(scm)
        echo "Cloning completed"
    }
    stage("test1"){
        echo "test1"
        command = "git log --oneline --pretty='%s' | head -n 2"
        return sh(script: command, returnStdout: true)
    }
    stage("test2"){
        echo "test2"
    }
    stage("test3"){
        fun1()
    }
}

#!groovy
def name
def changelog
def fun1(){
    echo "testing my last case"
    echo "${params.environment} finally i am working"
}
def environment
parameters{
    string(name: 'environment', defaultValue: 'production', description: 'tell me where i am now', )
}
node{

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

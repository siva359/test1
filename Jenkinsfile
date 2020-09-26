#!groovy
def name
def changelog
def fun1(){
    echo "testing my last case"
    echo "${params.environment} finally i am working"
}
def environment
properties([
  parameters([
    string(name: 'environement', defaultValue: 'staging', description: 'where am i?', )
   ])
])
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

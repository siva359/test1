node("k8s-slave"){
    properties([
        buildDiscarder(logRotator(daysToKeepStr: '2', numToKeepStr: '2')),
        pipelineTriggers([pollSCM('* * * * *')])
    ])
    stage("clone"){
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/siva359/test1.git']]])
    }
    stage("prepare"){
        sh 'sudo chmod 666 /var/run/docker.sock'
        sh 'whoami'
    }
    stage("build"){
        // sh 'whoami'
        image = docker.build("sivapolisetty/kalki")
        // sh 'docker images'
    }
    stage("push"){
        
        // withDockerRegistry([ credentialsId: "docker-login", url: "" ]) {
        //     image.push("app1")
        //     image.push("latest")
        // }
        echo "Ignoring this as we already uplloaded latest"
    }
    // stage("test"){
    //     image.inside('-u root'){
    //         sh '''
    //             pwd
    //             whoami
    //         '''
    //     }
    // }
    stage("deploy"){
        withCredentials([file(credentialsId: 'sivaconfig', variable: 'sivaconfig')]) {
            sh '''
                kubectl get po --kubeconfig=${sivaconfig}
                kubectl apply -f app-deploy.yml --kubeconfig=${sivaconfig}
            '''
        }
    }
}

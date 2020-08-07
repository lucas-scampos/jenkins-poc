pipelineJob('pipelineJob') {
    definition {
        cps {
            script(readFileFromWorkspace('pipelineJob.groovy'))
            sandbox()
        }
    }
}
pipelineJob('gorila-job') {
    definition {
        cpsScm {
            scm {
                git {
                    credentials('fa991df9-b352-4dd4-a34e-ae8bc362570f')

                    remote {
                        url 'https://github.com/jpozorio/gorila-hackathon.git'
                    }
                    branch 'G-19'
                }
            }
        }
    }
}

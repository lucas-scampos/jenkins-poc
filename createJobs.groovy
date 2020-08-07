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
                    remote {
                        url 'https://github.com/jpozorio/gorila-hackathon.git'
                    }
                    branch 'G-19'
                }
            }
        }
    }
}
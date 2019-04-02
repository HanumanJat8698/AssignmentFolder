pipelineJob('Pipeline_DSL') {
    definition {
        cps {
            script(readFileFromWorkspace('File_Read.groovy'))
        }
    }
}
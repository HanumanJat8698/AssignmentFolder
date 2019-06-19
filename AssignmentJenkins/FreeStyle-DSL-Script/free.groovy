job('DSL-Tutorial-1-Test') {
    scm {
        git('https://github.com/leereilly/hello-world-java.git')
    }
    triggers {
        scm('H/1 * * * *')
    }
    steps {
        batchFile('javac HelloWorld.java');
        batchFile('java HelloWorld');
    }
}
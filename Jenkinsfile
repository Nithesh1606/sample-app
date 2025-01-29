pipeline {
	agent any
		tool {
			nodejs 'NodeJS 18'
		}
	stages {
		stage ('clone repository'){
		steps {
			git branch: 'main', url: 'https://github.com/Nithesh1606/sample-app.git'
		}
	}
	
	stage ('install dependance') {
	steps {
		sh 'npm install'
	    }
	}
	
	stage ('build app') {
	steps {
		sh 'nohup node index.js &'
	     }
	}
     
}
}


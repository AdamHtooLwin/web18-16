pipeline {
	agent { 
		dockerfile {
			filename 'Dockerfile.test'
		}
	}
	stages {
		stage('build'){
			steps {
				sh '''
				  ruby --version
				'''
			}
		}
	}
}
				

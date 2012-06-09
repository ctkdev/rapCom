package com.rapidcommittee

class UserController {

    def index() { }
	
	def login = {}
	def logout = {
		session.user = null
		session.invalidate()
		// redirect
	}
	def authenticate = {
		def user = User.findByLoginAndPassword(params.email, params.password);
		
		if(member) {
			// member exists -> start session
			session.user = user
			
			// do redirect
			// redirect(controller:"user", action:"index")
		}
		else {
			// bad login creds -> redirect
		}
	}
	
}

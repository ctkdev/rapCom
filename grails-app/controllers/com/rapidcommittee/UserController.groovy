package com.rapidcommittee

class UserController {
	def scaffold = true
	
	def index = {
		if(session.user) {
			// not logged in -> redirect to login page
			redirect(action: "login")
		} else {
			// logged in -> do something else
		
			// like this
			// redirect(action: "show")
			
			// or this
			render("Welcome ${session.user.toString()}")
		}
	}
	
	def login = {
		
	}
	def logout = {
		session.user = null
		session.invalidate()
		
		// redirect
		redirect(action:"index")
	}
	def authenticate = {
		def user = User.findByLoginAndPassword(params.email, params.password);
		
		if(user) {
			// member exists -> start session
			session.user = user
			
			// do redirect
			redirect(action:"index")
		}
		else {
			// bad login creds -> redirect
			flash.message = "Nice try, sneaky"
			redirect(action:"login")
		}
	}
	
}

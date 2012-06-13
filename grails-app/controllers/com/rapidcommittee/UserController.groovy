package com.rapidcommittee

class UserController {
	static allowedMethods = [authenticate: "POST"]
	
	def scaffold = true
	
	def index = {
		if(session.user) {
			// logged in -> do something else
			
			session.user.refresh()
			
			// like this
			// redirect(action: "show")
			
			// or this
			// render("Welcome ${session.user.toString()}")
			
			[fullName: session.user.toString(), committees: session.user.committees()]
		} else {
			// not logged in -> redirect to login page
			redirect(action: "login")
		}
	}
	
	def login = {
		// don't really need to do anything here
	}
	def logout = {
		session.user = null
		session.invalidate()
		
		// redirect
		redirect(action: "index")
	}
	def authenticate = {
		def user = User.findWhere(email: params.email, password: params.password);
		
		if(user) {
			// member exists -> start session
			session.user = user
			
			// do redirect
			redirect(action: "index")
		} else {
			// bad login creds -> redirect
			flash.message = "Nice try, buddy"
			redirect(action: "login")
		}
	}
	
}

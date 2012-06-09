package com.rapidcommittee

class User {
    static constraints = {
		firstName(blank: false)
		lastName(blank: false)
		email(email: true, blank: false, nullable: false, unique: true)
		password(password: true, blank: false)
    }
	
	String firstName
	String lastName
	String email
	
	/* I'm not sure whether or not this should
	* actually be a password hash in the standard
	* way or if grails automatically handles that
	* for us. As far as I can tell from the examples
	* in the book, grails has some built-in password
	* functionality, so I'll leave this as is.
	*/
   String password
   
	String toString() {
		"${firstName} ${lastName}"
	} 
}

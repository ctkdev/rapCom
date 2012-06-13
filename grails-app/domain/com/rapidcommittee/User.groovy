package com.rapidcommittee

class User {
	static constraints = {
		firstName(blank: false)
		lastName(blank: false)
		email(email: true, blank: false, nullable: false, unique: true)
		password(password: true, blank: false)
	}
	
	static hasMany = [memberships: CommitteeMembership]
	
	static fetchMode = [memberships: 'eager']
	
	String firstName
	String lastName
	String email
	String password

	List committees() {
		return memberships.collect{it.committee}
	}
	
	List addToCommittees(Committee committee) {
		CommitteeMembership.link(this, committee)
		return committees()
	}
	
	List removeFromCommittees(Committee committee) {
		CommitteeMembership.unlink(this, committee)
		return committees()
	}
	
	String toString() {
		"${firstName} ${lastName}"
	}
}

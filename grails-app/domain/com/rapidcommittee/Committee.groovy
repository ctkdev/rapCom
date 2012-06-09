package com.rapidcommittee

class Committee {
	static constraints = {
		name(blank: false)
	}
	
	static hasMany = [members:CommitteeMembership]
	
	String name
	CommitteeMembership admin
	
	Date dateCreated
	Date lastUpdated
}

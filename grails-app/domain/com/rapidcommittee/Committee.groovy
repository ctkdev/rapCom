package com.rapidcommittee

class Committee {
	static constraints = {
		name(blank: false)
	}
	
	static hasMany = [members: CommitteeMembership, meetings: Meeting]
	
	String name
	CommitteeMembership admin
	
	Date dateCreated
	Date lastUpdated
}

package com.rapidcommittee

class Committee {
	static constraints = {
		name(blank: false)
		admin(nullable:true, validator: {val, obj -> val in obj.members})
	}
	
	static hasMany = [members: CommitteeMembership, meetings: Meeting]
	
	String name
	CommitteeMembership admin
	
	Date dateCreated
	Date lastUpdated
}

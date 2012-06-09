package com.rapidcommittee

class CommitteeMembership {
	static constraints = {
		
	}
	
	static belongsTo = [user:User, committee:Committee]
	
	Date dateCreated
}

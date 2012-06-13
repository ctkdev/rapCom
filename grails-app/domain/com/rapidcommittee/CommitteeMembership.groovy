package com.rapidcommittee

class CommitteeMembership {
	static belongsTo = [user:User, committee:Committee]
	//User user
	//Committee committee
	
	Date dateCreated
	
	static CommitteeMembership link(user, committee) {
		def m = CommitteeMembership.findByUserAndCommittee(user, committee)
		
		if(!m) {
			// no membership, create link
			m = new CommitteeMembership()
			user?.addToMemberships(m)
			committee?.addToMemberships(m)
			m.save()
		}
		
		return m;
	}
	
	static void unlink(user, committee) {
		def m = CommitteeMembership.findByUserAndCommittee(user, committee)
		
		if(m) {
			// membership exists, destroy it
			user?.removeFromMemberships(m)
			committee?.removeFromMemberships(m)
			m.delete()
		}
	}
}

import com.rapidcommittee.User
import com.rapidcommittee.Committee
import com.rapidcommittee.CommitteeMembership

class BootStrap {

    def init = { servletContext ->
		def joe = new User(firstName: "Joe", lastName: "Bob", email: "joebob@rapidcommittee.com", password: "rapCom")
		
		
		joe.save(failOnError: true)
		
		for (i in 1..10) {
			def c = new Committee(name: "Committee " + i).save()
			def m = new CommitteeMembership(user: joe, committee: c).save()
			
			joe.addToMemberships(m)
		}
		
		joe.save(failOnError: true)
    }
    def destroy = {
    }
}

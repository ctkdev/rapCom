import com.rapidcommittee.User
import com.rapidcommittee.Committee
import com.rapidcommittee.CommitteeMembership

class BootStrap {

    def init = { servletContext ->
		def joe = new User(firstName: "Joe", lastName: "Bob", email: "joebob@rapidcommittee.com", password: "rapCom")
		
		
		joe.save(failOnError: true)
		

		for (i in ["Board of Directors",
					"rapidCommittee Developers Committee",
					"Rules Committee",
					"Evaluation Board",
					"Marketing Board",
					"Public Relations Committee",
					"Fundraising Board"]) {
			def c = new Committee(name: i).save()
			def m = new CommitteeMembership(user: joe, committee: c).save()
			
			CommitteeMembership.link(joe, c)
		}
		
		joe.save(failOnError: true)
    }
    def destroy = {
    }
}

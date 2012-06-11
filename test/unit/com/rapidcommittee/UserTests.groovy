package com.rapidcommittee



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserTests {
    void testToString() {
		def user = new User(firstName: "Joe", lastName: "Smith", email: "test@example.com", password: "top_secret")
		
		assertEquals "Joe Smith", user.toString()
	}
}

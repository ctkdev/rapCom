package com.rapidcommittee

import static org.junit.Assert.*
import org.junit.*

class MeetingTests {

	@Before
	void setUp() {
		// Setup logic here
	}

    @After
	void tearDown() {
		// Tear down logic here
	}

    @Test
    void timeTravelingValidationTest1() {
		def meet = new Meeting(begin: new Date(), end: new Date() - 1, committee: new Committee(name: "test"))
		
		assertFalse "Validation should fail", meet.validate()
	}
	
	@Test
	void timeTravelingValidationTest2() {
		def meet = new Meeting(begin: new Date() - 1, end: new Date() + 1, committee: new Committee(name: "test"))
		
		assertFalse "Validation should fail", meet.validate()
	}
	
	@Test
	void timeTravelingValidationTest3() {
		def meet = new Meeting(begin: new Date() + 1, end: new Date() + 2, committee: new Committee(name: "test"))
		
		assertTrue "Validation should succeed", meet.validate()
	}
	
	
}

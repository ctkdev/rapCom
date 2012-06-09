package com.rapidcommittee

class Meeting {
    static constraints = {
		begin(validator: {return (it > new Date())})
		end(validator: {val, obj -> (val > obj.begin)})
    }
	
	static belongsTo = [committee:Committee]
	
	Date begin
	Date end
	
	Date dateCreated
}

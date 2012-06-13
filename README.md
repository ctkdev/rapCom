Some Notes
==========

To try it out, I created some example data in BootStrap.groovy,
so you can login with the email **joebob@rapidcommittee.com** and 
password **rapCom**. You can also try some bad login info to see 
a bootstrap alert message.

So I ended up getting a little creative and adding some domain 
classes for Meetings and Users as well as Committees. 
CommitteeMembership is the link between Users and Committees.

I ended up scaffolding a lot of the CRUD operations. I'm not sure 
if this is what you had in mind but if you want I can go back 
and create them.

You can find a few integration tests in `test/integration/com/rapidcommittee/MeetingTests.groovy`
and some unit tests in `test/unit/com/rapidcommittee/UserTests.groovy`.

I set up a small login for Users and added some Bootstrap styling
to it. I decided not to spend too much time working with the HTML/CSS
since I figured that you had already seen a little of what I can do with 
HTML/CSS/JS. (Actually, in the project I showed you I was using LESS but 
that's just fancy CSS3).

For the login, I did not implement any password hashing which of course 
isn't realistic, but adding a SHA/md5 codec and passing the password 
through it before insertion and during login wouldn't be too difficult.

For bonus points and convenience, I `.gitignore`-d class files.

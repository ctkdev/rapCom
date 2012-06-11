Some Notes
==========

So I ended up added a little flair with some domain classes 
for Meetings and Users as well as Committees. CommitteeMembership 
is the link between Users and Committees.

You can find a few integration tests in test/integration/com/rapidcommittee/MeetingTests.groovy
and some unit tests in test/unit/com/rapidcommittee/UserTests.groovy.

I set up a small login for Users and added some Bootstrap styling
to it. I decided not to spend too much time working with the HTML/CSS
since I figured that you had already seen a little of what I can do with 
HTML/CSS/JS. (Actually, in the project I showed you I was using LESS but 
LESS is just fancy CSS3).

For the login, I did not implement any password hashing which of course 
isn't realistic, but adding a SHA codec and passing the password through
it before insertion and during login wouldn't be too difficult.

For bonus points, I added a simple .gitignore.

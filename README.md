ARCHITECT TEST - Week 3
---------------
We are building a software to control the flow of planes at an airport.
Planes can only land and take off when sunny, not when stormy.

The plane and the airport do not interact with each other. You have created two seperate things that don't talk.

see the new failing test that I've added.

Also the weather flickers between tests, you haven't stubbed the weather. This will cause people to think that the reason a test is failing is because it always flickers between red and green. Not because it's actually broken. I'm guessing when you where developing you ended running the tests a few times to be sure.


# FAIL

//the code wont read this so you can use this for notes e.g if you come back from a hiatus for example, you can contine where you left off
print "Hello World.". //prints hello world into the console
//switching to 0 to copy this script into ship's bulk memory usefull for Remote tech
switch to 0.
copy tutorial to 1.
wait 1. //waits 1 seconds or asmany seconds as you like
switch to 1. //switches back to "Persistance" volume 
//lock - this is locking something and changed everytime it is called upon
//set - varient of lock but it is manipulatable by the player 
//UNTIL - until (certain variable is reached) - will run segment of code until parameter is met e.g UNTIL true runs until variable is true
//lets get into specifics
lock throttle to 1. // throttles all the way up, basicaly pressing "Z" on your keyboard works on a 0-1 ratio e.g 0.5 sets throttle to half 0 will cut the throttle
stage. //equal to presing the space bar on the keyboard 
AG1 ON. //activates action group 1 like when you press 1 on your keyboard this is the same for all Action groups 1-9 actiongroup 10 is AG0
//steering is the value where it will hold the rocket to a certain heading or vector e.g prograde/retrograde or up
lock steering to up.
//defned variables these are where you set a value like x in algabreic terms it uses algebra which is fun!
//until loop
lock steering to heading (90,90). //locks steering to up using a roll of 0 relitive to 90
wait until altitude > 10000. //waits until the rocket crosses 10 kelometers ASL we can also use alt:radar for the same thing but relitive to the ground
lock throttle to 0. //cuts throttle 
wait until altitude < 3000.
stage. //stages and releases the parachutes
print "speed: " + SHIP:AIRSPEED. //prints our speed relitive to the air which is the same on the navball by the way
wait until SHIP:AIRSPEED < 1. //waits until we havee landed
wait 10. //allows ship to settle so we dont explode because we dont want the script to say we have landed and then we explode!
print "LZ-water, the boat has landed". // prints that the boat has landed

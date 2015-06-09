import random 
#-*- coding: ascii -*
import os, sys
print "Exercise 94:Random Password"
print "Write a function that generates a random password. The password should have a random length of between 7 and 10 characters. Each character should be randomly selected from positions 33 to 126 in the ASCII table. Your function will not take any parameters. It will return the randomly generated password as its only result. Display the randomly generated password in your file's main program. Your main program should only run when your solution has not been imported into another file"

ext=random.randrange(7,11,1)
a=""
for i in range(ext):
	numchar=random.randrange(33,127,1)
	char=chr(numchar)
	a+=char
print "The random Password is: ",a
	

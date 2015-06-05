import numpy as np
print "Exercise 10:Arithmetic"
print "Create a program that reads two integers, a and b,from the user.Your program should compute and display"
print "The sum of and b"
a=float(raw_input("Please enter a="))
b=float(raw_input("Please enter b="))

print "La suma es: ", a+b
print "La resta b-a es:", b-a
print "El producto es:", a*b
print "El cociente a/b es: ", a/b
print "El residuo de a/b es: ", a%b
print "El logaritmo en base 10 de a es:", np.log10(a)
print "El exponencial a**b", a**b

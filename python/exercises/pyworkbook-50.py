

print "Exercise 50:Roots of a Quadratic Function"
print "Writeaprogramthatcomputestherealrootsofaquadraticfunction.Yourprogramshouldbeginbypromptingtheuserforthevaluesof a, b and c.Thenitshoulddisplay a message indicating the number of real roots, along with the values of the real roots"

print "Insert the a,b,c coefficients for f(x)=ax^2+bx+c"
a=float(raw_input("Please enter a="))
b=float(raw_input("Please enter b="))
c=float(raw_input("Please enter c="))
disc=b**2-4*a*c

if (disc > 0):
	
	root1=(-b+(disc)**(1/2))/(2*a)
	root2=(-b-(disc)**(1/2))/(2*a)
	print "The equation have two real roots: ", root1," and ", root2
elif (disc==0):
	root1=(-b+(disc)**(1/2))/(2*a)
	print "The equation have only one real root: ", root1
else:
	print "The equation don't have any real root"


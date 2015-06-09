print "Exercise 63:Temperature ConversionTable"

print "Write a program that displays a temperature conversion table for degrees Celsius and degrees Fahrenheit. The table should include rows for all temperatures between 0 and 100 degrees Celsius that are multiples of 10 degrees Celsius. Include appropriate headings on your columns. "
import dis
c= compile('u"\N{DEGREE SIGN}"', '', 'eval')
#dis.dis(c)
#c.co_consts

celsius=[]
fahrenheit=[]
print c.co_consts[0],"C ", c.co_consts[0],"F "

for i in range (0,11):
	c=i*10.0
	celsius.append(c)
	fahrenheit.append(1.8*c+32)
	print celsius[i],fahrenheit[i]



	
	

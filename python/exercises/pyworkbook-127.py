print "Exercise 127:The Sieve of Eratosthenes"
print "Create a Python program that uses this algorithm to display all of the prime numbers between 2 and a limit entered by the user. If you implement the algorithm correctly you should be able to display all of the prime numbers less than 1,000,000 in a few seconds"

a=int(raw_input("Please enter a limit for prime numbers: "))
i=2
lista=list(range(0,a))
for i in range(2,a):
	j=i
	for j in range (i+i,a,i):
		lista[j]=0
c=0

for k in range(0,len(lista)):
	if (lista[k]==0 or lista[k]==1):
		k=k
	else:
		print lista[k],
		c+=1

	
	

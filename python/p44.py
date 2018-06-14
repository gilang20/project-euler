# Problem 44
def p44(n):
	pentagon = set()

	num = 1
	add = 4
	for x in range(n):
	    pentagon.add(num)
	    num += add
	    add += 3
	    
	for x in pentagon:
	    for y in pentagon:
	        if ((x-y) in pentagon) and ((x+y) in pentagon):
	            return (x-y)

sol44 = p44(5000)

print(sol44)
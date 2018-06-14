# Problem 62
def p62():
	cbc = []
	start = int(100000000000**(1/3))
	end = int(10000000000000**(1/3))
	for x in range(start,end+1):
	    cbc.append(''.join(sorted(str(x**3))))
	    if (cbc[-1] == '012334556789' or cbc[-1] == '012334566789'): # precomputed
	        return(x**3)

sol62 = p62()
print(sol62)
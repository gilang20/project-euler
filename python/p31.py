# Problem 31
def p31():
	count = 1

	for a in range(3): # 100
		for b in range(1 + (200 - a*100)//50): # 50
			for c in range(1 + (200 - a*100 - b*50)//20): # 20
				for d in range(1  + (200 - a*100 - b*50 - c*20)//10): # 10
					for e in range(1 + (200 - a*100 - b*50 - c*20 - d*10)//5): # 5
						for f in range(1 + (200 - a*100 - b*50 - c*20 -d*10 - e*5)//2): # 2
							count += 1

	return count

sol31 = p31()

print(sol31)
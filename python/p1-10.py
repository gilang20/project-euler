# Project Euler
# Problem 1
sol1 = sum([x for x in range(1,1000) if x%3==0 or x%5==0])


# Problem 2
def fibs(a,b):
    if (b > 4000000):
        return 0
    return b + fibs(b,a+b) if b%2==0 else fibs(b,a+b)
sol2 = fibs(0,1)

print ("Here You Go!")
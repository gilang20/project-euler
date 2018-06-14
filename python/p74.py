# Problem 74
# not efficient
fact = [1,1,2,6,24,120,720,5040,40320,362880]

def p74(n_max):
    ans = 0
    for x in range(1,n_max):
        cache = set()
        num = str(x)

        while (len(cache) < 60):
            new = 0
            for n in num:
                new += fact[int(n)]
                
            if new not in cache:
                cache.add(new)
                num = str(new)
            else:
                if (len(cache) == 59):
                    ans += 1
                break
    return ans
            
sol74 = p74(1000000)
print(sol74)
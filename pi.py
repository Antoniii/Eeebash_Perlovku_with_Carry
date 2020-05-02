from time import time

def pi_(n):
	sum = 0
	for i in range(n):
		sum += (-1)**i/(2*i+1)
	print(4*sum)

start = time()
pi_(1000000)
print("Time {} s".format((time()-start)))

'''
Python3:

n = 1000000
3.1415916535897743
Time 1.1266319751739502 s

n = 10000000
3.1415925535897915
Time 11.719210386276245 s

n = 100000000
3.141592643589326
Time 122.31052374839783 s
'''
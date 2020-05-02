def factorial_(n):
	if n == 0 or n == 1:
		return 1
	else:
		return n * factorial_(n-1)

print(factorial_(999)) # maximum recursion depth for Python3.6.9 = 998, Python2 = 999
print(factorial_(20))
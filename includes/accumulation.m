function[y, n] = accumulation(x, n)
n1 = find(n == 0) + min(n)
n2 = find(n == 0) + n
n2 = 1 : max(n2)
y = sum(x(n1 : n2))

n = n
[y, n]

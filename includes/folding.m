function[y, n] = folding(x, n)
y = fliplr(x)
n = -fliplr(n)
[n; y]
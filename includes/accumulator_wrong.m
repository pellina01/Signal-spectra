function[y, n] = accumulator(x, n)
y = []
n1 = find(n == 0) + min(n)
n2 = find(n == 0) + n
for n2 = 1 : max(n2)
    k = sum(x(n1 : n2))
    y = [y k]
end
n = n
[y; n]

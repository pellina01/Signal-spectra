%problem 1
x = [5,3,2,9,6,8]
n = -1:4
s = -3
[x_s, n_s] = timeshift(x, n, s)
hold on
g1 = stem(n, x, 'g')
g2 = stem(n_s, x_s, 'r')
l1 = "x[n]"
l2 = "x[n + 3]"
legend([g1, g2], [l1, l2])

%% problem 2
x = [10,-9,8,-3,5,6]
n = -3:2
[x_f, n_f] = folding(x, n)
[x_ft, n_ft] = timeshift(x_f, n_f, 2)

hold on
g1 = stem(n, x, 'g')
g2 = stem(n_ft, x_ft, 'r')
l1 = "x[n]"
l2 = "x[-n-2]"
legend([g1, g2], [l1, l2])


%% problem 3
x = [2,1,2,-2,-1,-2]
n = -3:2 
x_1 = 5 .* x
n_1 = n
[x_t, n_t] = timeshift(x, n, 1)
x_2 = 3 .* x_t
n_2 = n_t
[x_a, n_a] = signal_addition(x_1, n_1, x_2, n_2)

hold on
g1 = stem(n, x, 'g')
g2 = stem(n_a, x_a, 'r')
l1 = "x[n]"
l2 = "5x[n] + 3x[n-1]"
legend([g1, g2], [l1, l2])

%% problem 4
n = -10 : 10
x = sin(2 .* pi .* n) + sin (6 .* pi .* n)
x_1 = 3.* x
n_1 = n
[xt, nt] = timeshift(x, n, 1)
x_2 = 5.* xt
n_2 = nt
[x_a, n_a] = signal_addition(x_1, n_1, x_2, n_2)

hold on
g1 = stem(n, x, 'g')
g2 = stem(n_a, x_a, 'r')
l1 = "x[n]"
l2 = "3x[n] + 5x[n-1]"
legend([g1, g2], [l1, l2])
%% problem 5
n = -10:10
x = sin(2 .* pi .* n) + sin(6 .* pi .* n)
[xa, na] = accumulation(x, n)
xa = xa .* 3
[xt, nt] = signal_addition(xa, na, x, n)

hold on
g1 = stem(n, x, 'g')
g2 = stem(nt, xt, 'r')
l1 = "x[n]"
l2 = "3.* accumulate(x, n) + x[n]"
legend([g1, g2], [l1, l2])

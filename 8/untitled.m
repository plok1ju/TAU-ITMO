A = [-1 0 0 0;
    0 1 0 0;
    0 0 1 1;
    0 0 -1 1];
B = [0;1;0;1];
G1=[-1, 1, 0 ,0;
    0, -1, 1, 0;
    0, 0, -1, 1;
    0, 0, 0, -1];
Y = [0 1 0 0];
G = -G1;
BY = B*Y;
P1 = sylvester(A, G, BY);
P = fillmissing(P, "constant", 0);
K = -Y*pinv(P)
M = A+B*K;
eM = eig(M)
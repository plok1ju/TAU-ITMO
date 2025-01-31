syms t real;
A = [1,-2,3;2,-3,2;-2,1,-4];
B = [-3; -1; 3];
C = [0, 0, 0]
D = 0
x = [4; 3; -3];
t_1 = 3;

sys=ss(A,B,C,D);
opt=gramOptions('TimeIntervals',[0 t_1]);
P = gram(sys,'c',opt)

exp_a = expm(A'*(t_1-t));
exp_a_simplify = simplify(exp_a, "Steps", 00);

u_x_1 = B'*exp_a_simplify/P*x;
u_x_1_simplify = simplify(u_x_1)
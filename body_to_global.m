function eta_dot=body_to_global(input)
u=input(1);
v=input(2);
w=input(3);
%p=input(4);
p=0;
q=input(5);
r=input(6);

V=[u;v;w;p;q;r];
B=[1 0 0 0 0 0;
    0 1 0 0 0 0;
    0 0 1 0 0 0;
    0 0 0 0 0 0;
    0 0 0 0 1 0;
    0 0 0 0 0 1];

%phi=input(7);
theta=input(8);
zeta=input(9);
phi=0;
J=[cos(zeta)*cos(theta) -sin(zeta)*cos(phi)+cos(zeta)*sin(theta)*sin(phi) sin(zeta)*sin(phi)+cos(zeta)*cos(phi)*sin(theta) 0 0 0;
    sin(zeta)*cos(theta) cos(zeta)*cos(phi)+sin(phi)*sin(theta)*sin(zeta) -cos(zeta)*sin(phi)+sin(theta)*sin(zeta)*cos(phi) 0 0 0;
    -sin(theta) cos(theta)*sin(phi) cos(theta)*cos(phi) 0 0 0;
    0 0 0 1 sin(phi)*tan(theta) cos(phi)*tan(theta);
    0 0 0 0 cos(phi) -sin(phi);
    0 0 0 0 sin(phi)/cos(theta) cos(phi)/cos(theta)];

eta_dot=B*J*V;
%V(4)


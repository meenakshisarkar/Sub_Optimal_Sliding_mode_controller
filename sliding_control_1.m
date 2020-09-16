function control_x= sliding_control_1(input)
sigma1=input(1);
phi=input(2);
phi=0;
theta=input(3);
zeta=input(4);

u=input(5);
v=input(6);
w=input(7);
p=input(8);
p=0;
q=input(9);
r=input(10);

sigma5=input(11);
q_dot_r=input(12);
x_dot_r=input(13);
theta_dot_r=input(14);
u_dot_r=input(15);



u1=(147*q_dot_r)/25 + 539*u_dot_r + 1326*q*w + 120*u*abs(u) + r*((147*p)/25 - 1326*v);

u2=(147*theta_dot_r)/25 + 539*x_dot_r + 539*v*(cos(phi)*sin(zeta) - cos(zeta)*sin(phi)*sin(theta)) - 539*w*(sin(phi)*sin(zeta) + cos(phi)*cos(zeta)*sin(theta)) - (147*q*cos(phi))/25 + (147*r*sin(phi))/25 - 539*u*cos(theta)*cos(zeta);

u3=(539*(1/exp(1.5*sigma1) - 1))/(1/exp(1.5*sigma1) + 1) + (147*(1/exp(1.5*sigma5) - 1))/(25*(1/exp(1.5*sigma5) + 1));

%u3=(539*-sign(sigma1)) + (147*-sign(sigma5));

control_x=u1+u2+u3;

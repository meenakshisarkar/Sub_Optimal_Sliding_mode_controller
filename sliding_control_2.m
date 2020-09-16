function control_y= sliding_control_2(input)
sigma2=input(1);
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

sigma4=input(11);
p_dot_r=input(12);
y_dot_r=input(13);
phi_dot_r=input(14);
v_dot_r=input(15);


u1=1326*v_dot_r - (147*p_dot_r)/25 - 1326*p*w + 1224*v*abs(v) + r*((147*q)/25 + 539*u);


u2=(147*p)/25 - (147*phi_dot_r)/25 + 1326*y_dot_r - 1326*v*(cos(phi)*cos(zeta) + sin(phi)*sin(theta)*sin(zeta)) + 1326*w*(cos(zeta)*sin(phi) - cos(phi)*sin(theta)*sin(zeta)) + (147*r*cos(phi)*tan(theta))/25 - 1326*u*cos(theta)*sin(zeta) + (147*q*sin(phi)*tan(theta))/25;

u3=(1326*(1/exp(1.5*sigma2) - 1))/(1/exp(1.5*sigma2) + 1) - (147*(1/exp(1.5*sigma4) - 1))/(25*(1/exp(1.5*sigma4) + 1));
%u3=(1326*-sign(sigma2)) - (147*-sign(sigma4));
control_y=u1+u2+u3;


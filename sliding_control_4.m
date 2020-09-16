function control_pitch= sliding_control_4(input)
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



u1=1836*q_dot_r + (147*u_dot_r)/25 + (3701313*sin(theta))/12500 - 1834*p*r - 1326*u*w + 2731*q*abs(q) + r*((171*p)/10 - (147*v)/25) + w*((147*q)/25 + 539*u);

u2=1836*theta_dot_r + (147*x_dot_r)/25 + (147*v*(cos(phi)*sin(zeta) - cos(zeta)*sin(phi)*sin(theta)))/25 - (147*w*(sin(phi)*sin(zeta) + cos(phi)*cos(zeta)*sin(theta)))/25 - 1836*q*cos(phi) + 1836*r*sin(phi) - (147*u*cos(theta)*cos(zeta))/25;


u3=(147*(1/exp(1.5*sigma1) - 1))/(25*(1/exp(1.5*sigma1) + 1)) + (1836*(1/exp(1.5*sigma5) - 1))/(1/exp(1.5*sigma5) + 1);

%u3=(147*-sign(sigma1)) + (1836*-sign(sigma5));
control_pitch=u1+u2+u3;




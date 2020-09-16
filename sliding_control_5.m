function control_yaw= sliding_control_5(input)
sigma6=input(1);
phi=input(2);
phi=0;
theta=input(3);


u=input(4);
v=input(5);
p=input(6);
p=0;
q=input(7);
r=input(8);



r_dot_r=input(9);
zeta_dot_r=input(10);



u1= 1834*r_dot_r + 2731*r*abs(r) + p*(1836*q + (147*u)/25) - q*((171*p)/10 - (147*v)/25) - u*((147*p)/25 - 1326*v) - v*((147*q)/25 + 539*u);

u2= 1834*zeta_dot_r - (1834*r*cos(phi))/cos(theta) - (1834*q*sin(phi))/cos(theta);

u3=(1834*(1/exp(1.5*sigma6) - 1))/(1/exp(1.5*sigma6) + 1);

%u3=(1834*-sign(sigma6));

control_yaw=u1+u2+u3;










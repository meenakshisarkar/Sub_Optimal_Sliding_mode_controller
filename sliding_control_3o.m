function control_z= sliding_control_3o(input)
sigma3=input(1);
phi=input(2);
phi=0;
theta=input(3);


u=input(4);
v=input(5);
w=input(6);
p=input(7);
p=0;
q=input(8);



z_dot_r=input(9);
w_dot_r=input(10);



u1=1326*w_dot_r + 1224*w*abs(w) - p*((147*p)/25 - 1326*v) - q*((147*q)/25 + 539*u);

u2=1326*z_dot_r + 1326*u*sin(theta) - 1326*w*cos(phi)*cos(theta) - 1326*v*cos(theta)*sin(phi);

u3=(1326*(1/exp(1.5*sigma3) - 1))/(1/exp(1.5*sigma3) + 1);
%u3=(1326*-sign(sigma3));
control_z=u1+u2+u3;

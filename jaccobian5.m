function dp5=jaccobian5(input)

%phi=input(1);
phi=0;
theta=input(2);
%theta=0;
theta_r=input(3);
zeta=input(4);
u=input(5);
v=input(6);
w=input(7);
q=input(8);
r=input(9);
P1=input(10);
P2=input(11);
P3=input(12);
P4=input(13);
P6=input(14);
P7=input(15);
P8=input(16);
P10=input(17);
P11=input(18);













dp5=2*theta_r - 2*theta - q*(P4*sin(phi)*(tan(theta)^2 + 1) + (P6*sin(phi)*sin(theta))/cos(theta)^2) - w*(P1*cos(phi)*cos(theta)*cos(zeta) - P3*cos(phi)*sin(theta) + P2*cos(phi)*cos(theta)*sin(zeta)) - v*(P1*cos(theta)*cos(zeta)*sin(phi) - P3*sin(phi)*sin(theta) + P2*cos(theta)*sin(phi)*sin(zeta)) + (4523827*P11*cos(theta))/28049020 - (1233771*P7*cos(theta))/701225500 + u*(P3*cos(theta) + P1*cos(zeta)*sin(theta) + P2*sin(theta)*sin(zeta)) - r*(P4*cos(phi)*(tan(theta)^2 + 1) + (P6*cos(phi)*sin(theta))/cos(theta)^2) - (272663391*P10*sin(phi)*sin(theta))/15722240 - (60454779*P8*sin(phi)*sin(theta))/786112000
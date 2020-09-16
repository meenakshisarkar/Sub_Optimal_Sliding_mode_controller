function dp4=jaccobian4(input)

%phi=input(1);
phi=0;
phi_r=input(2);
theta=input(3);
zeta=input(4);
v=input(5);
w=input(6);
q=input(7);
r=input(8);
P1=input(9);
P2=input(10);
P3=input(11);
P4=input(12);
P5=input(13);
P6=input(14);
P8=input(15);
P10=input(16);









dp4=2*phi_r - 2*phi - v*(P1*(sin(phi)*sin(zeta) + cos(phi)*cos(zeta)*sin(theta)) - P2*(cos(zeta)*sin(phi) - cos(phi)*sin(theta)*sin(zeta)) + P3*cos(phi)*cos(theta)) + w*(P2*(cos(phi)*cos(zeta) + sin(phi)*sin(theta)*sin(zeta)) - P1*(cos(phi)*sin(zeta) - cos(zeta)*sin(phi)*sin(theta)) + P3*cos(theta)*sin(phi)) - q*(P4*cos(phi)*tan(theta) - P5*sin(phi) + (P6*cos(phi))/cos(theta)) + r*(P5*cos(phi) + P4*sin(phi)*tan(theta) + (P6*sin(phi))/cos(theta)) + (272663391*P10*cos(phi)*cos(theta))/15722240 + (60454779*P8*cos(phi)*cos(theta))/786112000
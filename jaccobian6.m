function dp6=jaccobian6(input)

%phi=input(1);
phi=0;
theta=input(2);
zeta=input(3);
zeta_r=input(4);
u=input(5);
v=input(6);
w=input(7);

P1=input(8);
P2=input(9);

















dp6=2*zeta_r - 2*zeta - u*(P2*cos(theta)*cos(zeta) - P1*cos(theta)*sin(zeta)) + v*(P1*(cos(phi)*cos(zeta) + sin(phi)*sin(theta)*sin(zeta)) + P2*(cos(phi)*sin(zeta) - cos(zeta)*sin(phi)*sin(theta))) - w*(P1*(cos(zeta)*sin(phi) - cos(phi)*sin(theta)*sin(zeta)) + P2*(sin(phi)*sin(zeta) + cos(phi)*cos(zeta)*sin(theta)));
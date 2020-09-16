function dp8=jaccobian8(input)

%phi=input(1);
phi=0;
theta=input(2);
zeta=input(3);
u=input(4);
v=input(5);
v_r=input(6);
%p=input(7);
p=0;
r=input(8);
P1=input(9);
P2=input(10);
P3=input(11);
P7=input(12);
P8=input(13);
P9=input(14);
P10=input(15);
P11=input(16);
P12=input(17);








dp8=2*v_r - 2*v + P9*p + (19675*P11*r)/4207353 - (169062599*P7*r)/68720099 + (787*P12*u)/1834 + P1*(cos(phi)*sin(zeta) - cos(zeta)*sin(phi)*sin(theta)) - P2*(cos(phi)*cos(zeta) + sin(phi)*sin(theta)*sin(zeta)) + P10*((62475*v*tanh(v))/98264 - (62475*v^2*(tanh(v)^2 - 1))/196528) + P8*((363375*v*tanh(v))/196528 - (363375*v^2*(tanh(v)^2 - 1))/393056) - P3*cos(theta)*sin(phi);
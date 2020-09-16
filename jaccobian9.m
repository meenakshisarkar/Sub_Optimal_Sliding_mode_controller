function dp9=jaccobian9(input)

%phi=input(1);
phi=0;
theta=input(2);
zeta=input(3);
u=input(4);
w=input(5);
w_r=input(6);
%p=input(7);
p=0;
q=input(8);
P1=input(9);
P2=input(10);
P3=input(11);
P7=input(12);
P8=input(13);
P9=input(14);
P11=input(15);










dp9=2*w_r - 2*w - P8*p - P1*(sin(phi)*sin(zeta) + cos(phi)*cos(zeta)*sin(theta)) + P2*(cos(zeta)*sin(phi) - cos(phi)*sin(theta)*sin(zeta)) + P9*((24*w*tanh(w))/13 - (12*w^2*(tanh(w)^2 - 1))/13) - P11*((19675*q)/4207353 + (5410625*u)/12622059) + P7*((169062599*q)/68720099 + (19675*u)/4207353) - P3*cos(phi)*cos(theta);
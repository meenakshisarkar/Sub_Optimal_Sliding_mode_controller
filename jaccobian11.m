function dp11=jaccobian11(input)

%phi=input(1);
phi=0;
theta=input(2);
u=input(3);
w=input(4);
%p=input(5);
p=0;
q=input(6);
q_r=input(7);
r=input(8);
P4=input(9);
P5=input(10);
P6=input(11);
P7=input(12);
P8=input(13);
P9=input(14);
P10=input(15);
P11=input(16);
P12=input(17);







dp11=2*q_r - 2*q + (18189*P12*p)/18340 - (545297*P10*r)/4716672 + (36995*P8*r)/9433344 - P11*((19675*w)/4207353 - (37551250*q*tanh(q))/12622059 + (18775625*q^2*(tanh(q)^2 - 1))/12622059) + P7*((169062599*w)/68720099 - (136550*q*tanh(q))/4207353 + (68275*q^2*(tanh(q)^2 - 1))/4207353) - P5*cos(phi) - P9*((49*q)/5525 + (539*u)/1326) - P4*sin(phi)*tan(theta) - (P6*sin(phi))/cos(theta);
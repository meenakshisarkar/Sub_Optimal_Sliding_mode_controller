function dp7=jaccobian7(input)

theta=input(1);
zeta=input(2);
u=input(3);
u_r=input(4);
v=input(5);
w=input(6);
q=input(7);
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








dp7=2*u_r - 2*u - (539*P9*q)/1326 - (964075*P10*r)/4716672 + (1275323*P8*r)/3144448 + (787*P12*v)/1834 - P11*((5410625*w)/12622059 + (2000*u*tanh(u))/1402451 - (1000*u^2*(tanh(u)^2 - 1))/1402451) + P7*((19675*w)/4207353 + (30600000*u*tanh(u))/68720099 - (15300000*u^2*(tanh(u)^2 - 1))/68720099) + P3*sin(theta) - P1*cos(theta)*cos(zeta)-P2*cos(theta)*sin(zeta);
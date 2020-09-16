function dp12=jaccobian12(input)


%phi=input(1);
phi=0;
theta=input(2);
u=input(3);
v=input(4);
%p=input(5);
p=0;
q=input(6);
r=input(7);
r_r=input(8);

P4=input(9);
P5=input(10);
P6=input(11);
P7=input(12);
P8=input(13);
P10=input(14);
P11=input(15);
P12=input(16);










dp12=2*r_r - 2*r + P5*sin(phi) + P12*((2731*r*tanh(r))/917 - (2731*r^2*(tanh(r)^2 - 1))/1834) - P10*((545297*q)/4716672 + (964075*u)/4716672) + P8*((36995*q)/9433344 + (1275323*u)/3144448) - P11*((24983257*p)/25244118 - (19675*v)/4207353) + P7*((182645*p)/8414706 - (169062599*v)/68720099) - P4*cos(phi)*tan(theta) - (P6*cos(phi))/cos(theta);
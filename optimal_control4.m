function control4=optimal_control4(input)
u4=input(1);
P7=input(2);
P11=input(3);




dH4=(6875*P11)/12622059 - (25*P7)/4207353 + u4;

control4=u4-.01*dH4;
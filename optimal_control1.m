function control1=optimal_control1(input)
u1=input(1);
P7=input(2);
P11=input(3);




dH1=(127500*P7)/68720099 - (25*P11)/4207353 + u1;

control1=u1-.1*dH1;
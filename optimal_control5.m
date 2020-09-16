function control5=optimal_control5(input)
u5=input(1);
P12=input(2);




dH5=P12/1834 + u5;

control5=u5-.01*dH5;
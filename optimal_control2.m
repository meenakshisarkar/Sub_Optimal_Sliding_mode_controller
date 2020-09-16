function control2=optimal_control2(input)
u2=input(1);
P8=input(2);
P10=input(3);




dH2=(1225*P10)/4716672 + (2375*P8)/3144448 + u2;

control2=u2-.25*dH2;
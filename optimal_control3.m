function control3=optimal_control3(input)
u3=input(1);
P9=input(2);




dH3=P9/1326 + u3;

control3=u3-.25*dH3;
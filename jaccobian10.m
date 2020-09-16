function dp10=jaccobian10(input)

v=input(1);
w=input(2);
%p=input(3);
p=0;
p_r=input(4);
q=input(5);
r=input(6);
P4=input(7);
P7=input(8);
P8=input(9);
P9=input(10);
P11=input(11);
P12=input(12);








dp10=2*p_r - 2*p - P4 + (18189*P12*q)/18340 - (24983257*P11*r)/25244118 + (182645*P7*r)/8414706 - P8*w - P9*((49*p)/5525 - v)
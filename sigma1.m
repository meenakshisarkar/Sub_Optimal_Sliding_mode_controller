function sig1=sigma1(input)
u=input(1);
u_ref=input(2);
x=input(3);
x_ref=input(4);

sig1=(u-u_ref)+(x-x_ref);
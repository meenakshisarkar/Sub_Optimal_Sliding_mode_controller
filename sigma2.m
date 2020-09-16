function sig2=sigma2(input)
v=input(1);
v_ref=input(2);
y=input(3);
y_ref=input(4);

sig2=(v-v_ref)+(y-y_ref);
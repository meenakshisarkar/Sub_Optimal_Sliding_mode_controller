function sig5=sigma5(input)
q=input(1);
q_ref=input(2);
theta=input(3);
theta_ref=input(4);

sig5=(q-q_ref)+(theta-theta_ref);
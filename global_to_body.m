function V_dot_ref=global_to_body(input)
V_dot_ref=zeros(1,6);
x_dot_ref=input(1);
y_dot_ref=input(2);
z_dot_ref=input(3);
phi_dot_ref=input(4);
theta_dot_ref=input(5);
zeta_dot_ref=input(6);

eta_dot_ref=[x_dot_ref;y_dot_ref;z_dot_ref;phi_dot_ref;theta_dot_ref;zeta_dot_ref];


%phi=input(7);
phi=0;
theta=input(8);
zeta=input(9);

J=[cos(zeta)*cos(theta) -sin(zeta)*cos(phi)+cos(zeta)*sin(theta)*sin(phi) sin(zeta)*sin(phi)+cos(zeta)*cos(phi)*sin(theta) 0 0 0;
    sin(zeta)*cos(theta) cos(zeta)*cos(phi)+sin(phi)*sin(theta)*sin(zeta) -cos(zeta)*sin(phi)+sin(theta)*sin(zeta)*cos(phi) 0 0 0;
    -sin(theta) cos(theta)*sin(phi) cos(theta)*cos(phi) 0 0 0;
    0 0 0 1 sin(phi)*tan(theta) cos(phi)*tan(theta);
    0 0 0 0 cos(phi) -sin(phi);
    0 0 0 0 sin(phi)/cos(theta) cos(phi)/cos(theta)];

V_dot_ref=J\eta_dot_ref;



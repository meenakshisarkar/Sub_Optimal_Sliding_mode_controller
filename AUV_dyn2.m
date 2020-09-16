function auv_dyn=AUV_dyn2(input)
u1=input(1);
u2=input(2);
u3=input(3);
u4=input(4);
u5=input(5);


phi=input(6);
phi=0;
theta=input(7);

u=input(8);
v=input(9);
w=input(10);
p=input(11);
p=0;
q=input(12);
r=input(13);
t=input(14);

V=[u;v;w;p;q;r];

% if t<=20||(t>100&&t<=120)
%     fn=10;
% elseif t<=75||(t>120&&t<=175)
%     fn=20;
% else
%     fn=15;
% end;  
fn=15*abs(sin(t));
Mass=[539+fn 0 0 0 5.88 0;
    0 1326+fn 0 -5.88 0 0;
    0 0 1326+fn 0 0 0;
    0 -5.88 0 17.1 0 0;
    5.88 0 0 0 1836 0;
    0 0 0 0 0 1834];
B=[1 0 0 0 0 0;
    0 1 0 0 0 0;
    0 0 1 0 0 0;
    0 0 0 0 0 0;
    0 0 0 0 1 0;
    0 0 0 0 0 1];

 Gravity=[0;0;0;cos(theta)*sin(phi)*490*9.81*0.0616;sin(theta)*490*9.81*0.0616;0];
 
 C=[0 0 0 0 1326*w -1326*v+5.88*p;
     0 0 0 -1326*w 0 539*u+5.88*q;
     0 0 0 1326*v-5.88*p -539*u-5.88*q 0;
     0 1326*w -1326*v+5.88*p 0 1834*r -1836*q-5.88*u;
     -1326*w 0 539*u+5.88*q -1834*r 0 17.1*p-5.88*v;
      1326*v-5.88*p -539*u-5.88*q 0 1836*q+5.88*u -17.1*p+5.88*v 0];
 del_C=[0 0 0 0 10*w -16*v+5.88*p;
        0 0 0 -13*w 0 53*u-5.88*q;
        0 0 0 +5.88*p +150*u 0;
        0 130*w -150*v 0 400*r -150*q+10*u;
        150*w 0 120*u-6*q 300*r 0 +5.88*v;
        -150*v+1.88*p -50*u+4.88*q 0 183*q -5.88*v 0];
  C=B*(C+del_C); 
  del_g=[0;0;0;314.2*cos(theta)*sin(phi);314.2*sin(theta);0];
  Gravity=Gravity+del_g;
  
Damping=-[-120*abs(u) 0 0 0 0 0;0 -1224*abs(v) 0 0 0 0;0 0 -1224*abs(w) 0 0 0;0 0 0 0*abs(p) 0 0;0 0 0 0 -2731*abs(q) 0;0 0 0 0 0 -2731*abs(r)];

del_D=-[-10*abs(u) 0 0 0 0 0;0 -12*abs(v) 0 0 0 0;0 0 -13*abs(w) 0 0 0;0 0 0 0*abs(p) 0 0;0 0 0 0 -10*abs(q) 0;0 0 0 0 0 -5*abs(r)];
U=[u1;u2;u3;0;u4;u5];


Damping=B*(Damping+del_D);

auv_dyn=Mass\((-C*V-Damping*V-Gravity)+B*U);








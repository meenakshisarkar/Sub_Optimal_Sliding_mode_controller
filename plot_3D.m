clc;
load 'X_AUV.mat';
dlmwrite('X_AUV.text',X.data,'\t');
dlmwrite('time.text',X.time,'\t');
t=dlmread('time.text','\t');
load 'Y_AUV.mat';
dlmwrite('Y_AUV.text',Y.data,'\t');

load 'Z_AUV.mat';
dlmwrite('Z_AUV.text',Z.data,'\t');

x=dlmread('X_AUV.text','\t');
y=dlmread('Y_AUV.text','\t');
z=dlmread('Z_AUV.text','\t');
% plot(x,z);

load 'Xd_AUV.mat';
dlmwrite('Xd_AUV.text',Xd.data,'\t');
%dlmwrite('time.text',X.time,'\t');

load 'Yd_AUV.mat';
dlmwrite('Yd_AUV.text',Yd.data,'\t');

load 'Zd_AUV.mat';
dlmwrite('Zd_AUV.text',Zd.data,'\t');

xd=dlmread('Xd_AUV.text','\t');
yd=dlmread('Yd_AUV.text','\t');
zd=dlmread('Zd_AUV.text','\t');

load 'X_AUV_opt.mat';
dlmwrite('X_AUV_opt.text',Xo.data,'\t');


load 'Y_AUV_opt.mat';
dlmwrite('Y_AUV_opt.text',Yo.data,'\t');

load 'Z_AUV_opt.mat';
dlmwrite('Z_AUV_opt.text',Zo.data,'\t');

xo=dlmread('X_AUV_opt.text','\t');
yo=dlmread('Y_AUV_opt.text','\t');
zo=dlmread('Z_AUV_opt.text','\t');

plot3(x,y,-z);
% xlabel('X');
% ylabel('Y');
% zlabel('Z')
grid on;

axis square;
hold on;
plot3(xd,yd,-zd,'r');

plot3(xo,yo,-zo,'g');
hold off;

figure(2),
plot(xd,yd,'b--',x,y,'r-');
h_legend1=Legend('Desired trajectory','Trajectory tracked by SM controller','location','best');
set(h_legend1,'FontSize',15);
axis([-20 20 -20 20]);
%axis([0 60 -16 16]);
figure(3),
plot(xd,yd,'b--',xo,yo,'m-');
h_legend2=Legend('Desired trajectory','Trajectory tracked by SOSM controller','location','best');
set(h_legend2,'FontSize',15);
axis([-20 20 -20 20]);
%axis([0 60 -16 16]);

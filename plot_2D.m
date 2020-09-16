load 'X_AUV.mat';
dlmwrite('X_AUV.text',X.data,'\t');
dlmwrite('time.text',X.time,'\t');
t=dlmread('time.text','\t');
load 'Y_AUV.mat';
dlmwrite('Y_AUV.text',Y.data,'\t');

load 'Z_AUV.mat';
dlmwrite('Z_AUV.text',Z.data,'\t');

load 'Theta_AUV.mat';
dlmwrite('Theta_AUV.text',Theta.data,'\t');

load 'Zeta_AUV.mat';
dlmwrite('Zeta_AUV.text',Zeta.data,'\t');

x=dlmread('X_AUV.text','\t');
y=dlmread('Y_AUV.text','\t');
z=dlmread('Z_AUV.text','\t');
theta=dlmread('Theta_AUV.text','\t');
zeta=dlmread('Zeta_AUV.text','\t');
% plot(x,z);

load 'Xd_AUV.mat';
dlmwrite('Xd_AUV.text',Xd.data,'\t');
%dlmwrite('time.text',X.time,'\t');

load 'Yd_AUV.mat';
dlmwrite('Yd_AUV.text',Yd.data,'\t');

load 'Zd_AUV.mat';
dlmwrite('Zd_AUV.text',Zd.data,'\t');

load 'Thetad_AUV.mat';
dlmwrite('Thetad_AUV.text',theta_d.data,'\t');

load 'Zetad_AUV.mat';
dlmwrite('Zetad_AUV.text',zeta_d.data,'\t');

xd=dlmread('Xd_AUV.text','\t');
yd=dlmread('Yd_AUV.text','\t');
zd=dlmread('Zd_AUV.text','\t');
theta_d=dlmread('Thetad_AUV.text','\t');
zeta_d=dlmread('Zetad_AUV.text','\t');

load 'X_AUV_opt.mat';
dlmwrite('X_AUV_opt.text',Xo.data,'\t');


load 'Y_AUV_opt.mat';
dlmwrite('Y_AUV_opt.text',Yo.data,'\t');

load 'Z_AUV_opt.mat';
dlmwrite('Z_AUV_opt.text',Zo.data,'\t');

load 'Theta_AUV_opt.mat';
dlmwrite('Theta_AUV_opt.text',theta_o.data,'\t');

load 'Zeta_AUV_opt.mat';
dlmwrite('Zeta_AUV_opt.text',zeta_o.data,'\t');

xo=dlmread('X_AUV_opt.text','\t');
yo=dlmread('Y_AUV_opt.text','\t');
zo=dlmread('Z_AUV_opt.text','\t');
theta_o=dlmread('Theta_AUV_opt.text','\t');
zeta_o=dlmread('Zeta_AUV_opt.text','\t');

plot(x,y);
% xlabel('X');
% ylabel('Y');
% zlabel('Z')
% grid on;

axis square;
hold on;
plot(xd,yd,'r');

plot(xo,yo,'g');
hold off;
n=length(x);
% error_X_slid=zeros(1,n);
% error_X_slid_opt=zeros(1,n);
% for i=1:1:n
% %     if xd(i,1)==0
% %         xd(i,1)=.000001;
% %     end
% error_X_slid1(i,1)=((xd(i,1)-x(i,1))/(xd(i,1)))*100;
% error_X_slid_opt(i,1)=((xd(i,1)-xo(i,1))/xd(i,1))*100;
% % error_X_slid(i,1)=(xd(i,1)-x(i,1))/xd(i,1);
% % error_X_slid_opt(i,1)=(xd(i,1)-xo(i,1));
% 
% end
 error_X_slid=(xd-x);
  %figure(2),plot(t,error_X_slid,'r--');
  error_X_slid_opt=(xd-xo);
%  hold on;
% error_X_slid_opt2=(xd-xo2);

figure(2),
plot(t,error_X_slid,'r--',t,error_X_slid_opt,'b-');
h_legend1=legend('X-position error of SM controller','X-position error of SOSM controller with delta1','location','best');
set(h_legend1,'FontSize',11);
xlabel('time(s)','FontSize',12);
ylabel('X position error(m)','FontSize',12);
% axis([0 200 -.6 .22]);
hold off;

error_Y_slid=(yd-y);
error_Y_slid_opt=(yd-yo);
% figure(3),plot(t,error_Y_slid,'r--');
%error_Y_slid_opt2=(yd-yo2);
%  hold on;
figure(3),plot(t,error_Y_slid,'r--',t,error_Y_slid_opt,'b-');
h_legend2=legend('Y-position error of SM controller','Y-position error of SOSM controller with delta1','location','best');
set(h_legend2,'FontSize',11);
xlabel('time(s)','FontSize',12);
ylabel('Y position error(m)','FontSize',12);
% axis([0 200 -.4 .275]);


error_Z_slid=zd-z;
error_Z_slid_opt=zd-zo;
%error_Z_slid_opt2=zd-zo2;
% figure(4),plot(t,error_Z_slid,'r--');
%  hold on;
figure(4),plot(t,error_Z_slid,'r--',t,error_Z_slid_opt,'b-');
 h_legend3=legend('Z-position error of SM controller','Z-position error of SOSM controller with delta1','location','best');
set(h_legend3,'FontSize',11);
xlabel('time(s)','FontSize',12);
ylabel('Z position error(m)','FontSize',12);
% axis([0 200 -.06 .01]);



error_Theta_slid=theta_d-theta;
error_Theta_slid_opt=theta_d-theta_o;
% error_Theta_slid_opt2=theta_d-theta_o2;
% figure(4),plot(t,error_Z_slid,'r--');
%  hold on;
figure(5),plot(t,error_Theta_slid,'r--',t,error_Theta_slid_opt,'b-');
h_legend3=legend('Pitch-angular error of SM controller','Pitch-angular error of SOSM controller with delta1','location','best');
set(h_legend3,'FontSize',11);
xlabel('time(s)','FontSize',12);
ylabel('Pitch angular error(rad)','FontSize',12);
% axis([0 200 -.02 .02]);



error_Zeta_slid=zeta_d-zeta;
error_Zeta_slid_opt=zeta_d-zeta_o;
% error_Zeta_slid_opt2=zeta_d-zeta_o2;
% figure(4),plot(t,error_Z_slid,'r--');
%  hold on;
figure(6),plot(t,error_Zeta_slid,'r--',t,error_Zeta_slid_opt,'b-');
h_legend3=legend('Yaw-angular error of SM controller','Yaw-angular error of SOSM controller with delta1','location','best');
set(h_legend3,'FontSize',11);
xlabel('time(s)','FontSize',12);
ylabel('Yaw angular error(rad)','FontSize',12);
%axis([0 150 -.003 .004]);
% 
% 
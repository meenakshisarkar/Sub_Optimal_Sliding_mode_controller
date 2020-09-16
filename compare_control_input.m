clc;
load 'slidding_control1.mat';
dlmwrite('slidding_control1.text',U1.data,'\t');
dlmwrite('time.text',U1.time,'\t');

load 'slidding_control2.mat';
dlmwrite('slidding_control2.text',U2.data,'\t');

load 'slidding_control3.mat';
dlmwrite('slidding_control3.text',U3.data,'\t');

load 'slidding_control4.mat';
dlmwrite('slidding_control4.text',U4.data,'\t');

load 'slidding_control5.mat';
dlmwrite('slidding_control5.text',U5.data,'\t');


load 'slidding_opt_control1.mat';
dlmwrite('slidding_opt_control1.text',Uo1.data,'\t');

load 'slidding_opt_control2.mat';
dlmwrite('slidding_opt_control2.text',Uo2.data,'\t');

load 'slidding_opt_control3.mat';
dlmwrite('slidding_opt_control3.text',Uo3.data,'\t');

load 'slidding_opt_control4.mat';
dlmwrite('slidding_opt_control4.text',Uo4.data,'\t');

load 'slidding_opt_control5.mat';
dlmwrite('slidding_opt_control5.text',Uo5.data,'\t');

u1=dlmread('slidding_control1.text','\t');
t=dlmread('time.text','\t');

uo1=dlmread('slidding_opt_control1.text','\t');
u12=u1.*u1;
uo12=uo1.*uo1;
total_U1=sum(u12)
total_Uo1=sum(uo12)
figure(1);
plot(t,u1,'r-',t,uo1,'b-');
h_legend1=legend('SM control effort for controlling surge','SOSM control for controlling surge','location','best');
set(h_legend1,'FontSize',12);
xlabel('time(s)','FontSize',12);
ylabel('input for controlling surge(N)','FontSize',12);
%axis([5 100 -150 150]);

u2=dlmread('slidding_control2.text','\t');
t=dlmread('time.text','\t');

uo2=dlmread('slidding_opt_control2.text','\t');
u22=u2.*u2;
uo22=uo2.*uo2;
total_U2=sum(u22)
total_Uo2=sum(uo22)
figure(2),
plot(t,u2,'r-',t,uo2,'b-');
h_legend2=legend('SM control effort for controlling sway','SOSM control effort for controlling sway','location','best');
set(h_legend2,'FontSize',12);
xlabel('time(s)','FontSize',12);
ylabel('input for controlling sway(N)','FontSize',12);
%axis([5 100 -450 1000]);

u3=dlmread('slidding_control3.text','\t');
t=dlmread('time.text','\t');

uo3=dlmread('slidding_opt_control3.text','\t');
u32=u3.*u3;
uo32=uo3.*uo3;
total_U3=sum(u32)
total_Uo3=sum(uo32)
figure(3),
plot(t,u3,'r-',t,uo3,'b-');
h_legend3=legend('SM control effort for controlling heave','SOSM control effort for controlling heave','location','best');
set(h_legend3,'FontSize',12);
xlabel('time(s)','FontSize',12);
ylabel('input for controlling heave(N)','FontSize',12);
%axis([10 100 -30 30]);

u4=dlmread('slidding_control4.text','\t');
t=dlmread('time.text','\t');

uo4=dlmread('slidding_opt_control4.text','\t');
u42=u4.*u4;
uo42=uo4.*uo4;
total_U4=sum(u42)
total_Uo4=sum(uo42)
figure(4),
plot(t,u4,'r-',t,uo4,'b-');
h_legend4=legend('SM control effort for controlling pitch','SOSM control effort for controlling pitch','location','best');
set(h_legend4,'FontSize',12);
xlabel('time(s)','FontSize',12);
ylabel('input for controlling pitch(N)','FontSize',12);
%axis([10 100 -5 1]);

u5=dlmread('slidding_control5.text','\t');
t=dlmread('time.text','\t');

uo5=dlmread('slidding_opt_control5.text','\t');
u52=u5.*u5;
uo52=uo5.*uo5;
total_U5=sum(u52)
total_Uo5=sum(uo52)
figure(5),
plot(t,u5,'r-',t,uo5,'b-');
h_legend5=legend('SM control effort for controlling yaw','SOSM control effort for controlling yaw','location','best');
set(h_legend5,'FontSize',12);
xlabel('time(s)','FontSize',12);
ylabel('input for controlling yaw(N)','FontSize',12);
%axis([5 100 -400 700]);

total_s=total_U1+total_U2+total_U3+total_U4+total_U5
total_o=total_Uo1+total_Uo2+total_Uo3+total_Uo4+total_Uo5
percentage=(total_s-total_o)/total_s*100




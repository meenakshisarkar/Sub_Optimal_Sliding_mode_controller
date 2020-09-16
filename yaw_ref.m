function yaw_d= yaw_ref(t)
% yd=input(1);
% xd=input(2);
% n=10;
% yawd=0;
% for i=1:1:n
%   yawd=yawd+ 8/pi*(sin(i*pi/4)+sin(3*i*pi/4))/i^2*sin(0.05*i*t) ;
% end
%yawd= atan2(50*cos(0.05*t),(t+10*sin(.1*t)));
% yawd=atan2(yd,xd);
m=100;
% j=1;
%for t=0.1:.1:200
    yaw_d=0;
    for n=1:1:m
        yaw_d=yaw_d+1/(20*pi)*((64*pi^2/(5*n)-40*pi/n)*sin(pi*n/10)-32*pi/n^2*cos(pi*n/10))*sin(pi*n/2)*sin(n*pi*t/(20*pi));
    end
%     j=j+1;
% end
%  t=.01:.1:200;
%  plot(t,yaw_d);
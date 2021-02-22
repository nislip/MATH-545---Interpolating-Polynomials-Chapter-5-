%==============================================================
% Problem 4: Performing a not-a-knot cubic spline interpolant

x = [0 10 20 30 40 50 60 70 80 90 100];
y = [1000 1000 998 996 992 988 983 978 972 965 958]; % density units

j = spline(x,y,91) % evaluate at 34 degrees or any xi 
xq1 = 0:10:100 ; % set of query points 
s = spline(x,y,xq1); % interpolation variable 
plot(x,y,'*',xq1,s,'- '); % Plot the function

legend('interpolation points', 'spline');
title('Cubic Spline interpolation problem 4');
xlabel('temperature');
ylabel('water density');

%=============================================================
% surface tension 

y1 = [0.0756 0.0742 0.0728 0.0712 0.0696 0.0679 0.0662 0.0644 0.0626 0.0608 0.0589];
pp = spline(x,y1); % piecewise linear interpolation
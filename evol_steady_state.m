
%Evolution of the Steady State
clear all
close all
clc

f(1)=10;
m(1)=10;

b=0.5;     %'birth rate'
d=0.4;     %'death rate'
k1=10;     %'number of nests in wet, cool area'
k2=10;     %'number of nests in hot, dry area'
k=k1+k2;
ni=1;
for n=2:100
    f(n)=   f(n-1) + b*(k1/(k1+f(n-1)))*(f(n-1))-(d*f(n-1));
    m(n)=   m(n-1)+(b)*(1-(k1/(k1+f(n-1))))*f(n-1)-d*(m(n-1));
end

plot(f,'b')
 hold on
 plot(m,'r')
 title('Evolution of Steady State: b=0.5, d=0.4')
legend('Female','Male')
xlabel('Years')
ylabel('Population')
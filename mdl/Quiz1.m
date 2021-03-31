pos=4; Ts=2;
z=0.7156;
wn=15
Gn=tf(wn^2,[1 2*z*wn wn^2])
s1=7.21e3; w1=7.41e3;
conv([1 s1-i*w1],[1 s1+i*w1])
k2=ans(2);k3=ans(3);
sigmad=z*wn;
k1=10*sigmad;
k4=2*z*wn;k5=wn^2;
ko=k1*k3*k5/106.6e7
num=10*ko*[1 14400 106.6e6];
den=conv([1 k1],conv([1 k2 k3],[1 k4 k5]))
Tcl=tf(num,den);
step(Tcl,Gn)
legend('Tcl','Gn')
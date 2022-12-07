clear 
clc
%=======================================================================================================%
%input data
load fin_readings2.txt

%Static input
L = 0.055;
W = 0.1;
b = 0.005;
kf = 385;
Q = 80;
x = 0.0265;

% Dynamic input
V  = fin_readings2(1,1);

% Fin temp
T1 = fin_readings2(2,1);
T2 = fin_readings2(3,1);
T3 = fin_readings2(4,1);
T4 = fin_readings2(5,1);
T5 = fin_readings2(6,1);
T6 = fin_readings2(7,1);
T7 = fin_readings2(8,1);
T8 = fin_readings2(9,1);

%=========================================================================================================%

% Calculation
Ac= W*b; 
P= 2*(W+b);
Tb = (T1(1)+T2(1))/2;
Tf = (T3(1)+T4(1)+T5(1)+T6(1))/4;
Tinfi = (T7(1)+T8(1))/2;
Tfilm = (Tf+Tinfi)/2;

%properties of air 
t = Tfilm;

abs_visc=(-2E-05*(t^2) + 0.0471*t + 17.226)*10^-6;

kin_visc=((6E-05*(t^2))+0.1*t+12.987)*10^-6;
rho_air=(3E-06*(t^2))-0.0033*t+1.2945;
Pr=(-4E-10*(t^3))+(7E-07*(t^2))-0.0003*t+0.7107;
Cp=(3E-05*(t^2))+0.1534*t+1002.4;
kair=(2E-08*(t^2))+(7E-05*t)+0.0246;
alpha=((8E-05*(t^2))+(0.15*t)+18.471)*10^-6;


%fin calculation for pitch=10mm

Re=(V*L)/kin_visc;
Nu=0.332*(Re(1)^0.5)*(Pr^0.333);
Nu_avg=2*Nu;
h=(Nu*kair)/L;
m=((h*P)/(kf*Ac))^0.5;
Q_theo=(h*P*kf*Ac)^0.5*(Tb-Tinfi)*tanh(m*L);
T11 = cosh(m*(L-x))/cosh(m*L);
T12 = Tb-Tinfi;
T   = Tinfi + (T11*T12);
AMD= ((T-Tf)/T)*(100)

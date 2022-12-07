clear 
clc
%======================================================%
%input data

%Static input
L = 0.055;
W = 0.1;
b = 0.005;
kf = 200;

% Dynamic input
V  = 2;
% Fin temp
T1 = 49;
T2 = 48;
T3 = 44;    
T4 = 45;
T5 = 46;
T6 = 45;
T7 = 35;
T8 = 39;

%==========================================================%

% Calculation
Ac= W*b; %cross sectional area in m^2
P= 2*(W+b); %perimeter in metre
Tb = (T1+T2)/2;
Tf = (T3+T4+T5+T6)/4;
Tinfi = (T7+T8)/2;
Tfilm = (Tf+Tinfi)/2;

 
rho=2790; % (y) m^3
rho_air=1.127;



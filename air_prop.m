
t = input('Enter the deg: ');

abs_visc=(-2E-05*(t^2) + 0.0471*t + 17.226)*10^-6;


kin_visc=((6E-05*(t^2))+0.1*t+12.987)*10^-6;
rho=(3E-06*(t^2))-0.0033*t+1.2945;
Pr=(-4E-10*(t^3))+(7E-07*(t^2))-0.0003*t+0.7107;
Cp=(3E-05*(t^2))+0.1534*t+1002.4;
kair=(2E-08*(t^2))+(7E-05*t)+0.0246;
alpha=((8E-05*(t^2))+(0.15*t)+18.471)*10^-6;
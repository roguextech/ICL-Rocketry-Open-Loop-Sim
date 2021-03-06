rho0=1.225; %sea level density NOMINAL VALUE = 1.225kg/m^3
Cd=0.5; %drag coefficient NOMINAL VALUE = 0.5 
diameter=0.1778; %diameter of the rocket section NOMINAL VALUE = 0.1778
Sref=pi*diameter^2/4; %Wetted area m^2
D0=0.5*rho0*Sref*Cd; %Drag term independent of altitude change NOMINAL VALUE = 0.0076
H=2.252.*10.^(-5); %function by which the desnity changes as a function of altitude
T_min=0;
T_max=1000; %max thrust produced NOMINAL VALUE = 1000N
grav=9.81; %geopotential gravity acceleration
c=2000; %specific impulse (NS/kg) NOMINAL VALUE = 2000Ns/kg
m_f=26; %initial fuel mass (kg)

vector=[rho0,Cd,diameter,T_max,c,m_f]; %array containing inputs subject to deviations
% absdeviation=[0.05 0.1 0.05 0.1 0.1 0.05]; %array of abs values of deviations
% 
% sign=[1 0 -1]; %for sign=1 (+deviation), sign=0 (nominal value), for sign=-1 (-deviation)

% for i=1:length(sign)
%         mainfunct(vector.*(1-absdeviation*sign(i)));
%    
% end 

mainfunct(vector);


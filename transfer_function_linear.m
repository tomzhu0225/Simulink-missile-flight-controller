%(0 attach angle degree ; 1.5 Mach) denotes 1
%(0 degree ; 3 Mach) denotes 2
%(20 degree ; 1.5 Mach) denotes 3
%(20 degree ; 1.5 Mach) denotes 4
clear
gain_g1=2.5188e6;
zero_g1=[-158.04+158.15j ;-158.04-158.15j;-105.10+107.14j;-105.10-107.14j;-0.45283];
pole_g1=[0; -56250; -1010; -156.61+158.27j;-156.61-158.27j; -30.173; -0.59979];
gain_h1=[0.32884];
zero_h1=[0;-5000000;-1009.9;-104.7+107.4j;-104.7-107.4j;-5.9197];
pole_h1=[0; -56250; -1010; -156.61+158.27j;-156.61-158.27j; -30.173; -0.59979];
G1=zpk(zero_g1,pole_g1,gain_g1)
H1=zpk(zero_h1,pole_h1,gain_h1)
gain_g2=5.5668e6;
zero_g2=[-158.09+158.05j;-158.09-158.05j; -104.21+107.35j;-104.21-107.35j; -0.60368];
pole_g2=[0; -56250; -1042.2; -144.97+163.15j;-144.97-163.15j; -104.16; -1.067];
gain_h2=[0.67619];
zero_h2=[0;-5000000; -1041.7; -104.12+107.34j; -104.12-107.34j; 14.625];
pole_h2=[0; -56250; -1042.2; -144.97+163.15j;-144.97-163.15j; -104.16; -1.067];
G2=zpk(zero_g2,pole_g2,gain_g2)
H2=zpk(zero_h2,pole_h2,gain_h2)
%zpk([0;-5000000; -1041.7; -104.12+107.34j; -104.12-107.34j; 14.625],[0; -56250; -1042.2; -144.97+163.15j;-144.97-163.15j; -104.16; -1.067],0.67619)
gain_g3=2.3612e6;
zero_g3=[-157.88+158.28j; -157.88-158.28j;-105.52+106.56j;-105.52-106.56j; -0.71162];
pole_g3=[0; -56250; -1009.9; -156.54+158.41j;-156.54-158.41j; -29.636; -0.7824];
gain_h3=0.31288;
zero_h3=[0; -5000000; -1009.9; -105.17+106.81j;-105.17-106.81j; -3.5733];
pole_h3=[0; -56250; -1009.9; -156.54+158.41j;-156.54-158.41j; -29.636; -0.7824];
G3=zpk(zero_g3,pole_g3,gain_g3)
H3=zpk(zero_h3,pole_h3,gain_h3)

gain_g4=[5.1341e6]';
zero_g4=[-157.51+158.01j;-157.51-158.01j; -106.39+107.76j;-106.39-107.76j; -1.1854];
pole_g4=[0; -56250; -1042.2; -143.04+165.26j;-143.04-165.26j; -112.97; -1.5075];
gain_h4=[0.75391]';
zero_h4=[0; -5000000; -1041.7; -104.23+107.32j;-104.23-107.32j; -11.424];
pole_h4=[0; -56250 ; -1042.2; -143.04+165.26j;-143.04-165.26j; -112.97; -1.5075];
G4=zpk(zero_g4,pole_g4,gain_g4)
H4=zpk(zero_h4,pole_h4,gain_h4)

re_gain_g1=[45.757339];
re_zero_g1=[-0.45283; -105.305+107.2025j;-105.305-107.2025j];
re_pole_g1=[-30.173; -0.59979; 0; -1026.075];
re_gain_h1=5.748049e-6;
re_zero_h1=[-5.9197; -5.00e6; -104.555+107.2175j;-104.555-107.2175j];
re_pole_h1=[-30.173; -0.59979; -150.29+161.2728j;-150.29-161.2728j];

re_G1=zpk(re_zero_g1,re_pole_g1,re_gain_g1)
re_H1=zpk(re_zero_h1,re_pole_h1,re_gain_h1)


re_gain_g2=[101.31955];
re_zero_g2=[-0.60368; -105.305+107.2025j;-105.305-107.2025j];
re_pole_g2=[-104.16; -1.067; 0; -1026.075];
re_gain_h2= 1.222316e-5;
re_zero_h2=[-14.625; -5e6; -104.555+107.2175j;-104.555-107.2175j];
re_pole_h2=[-104.16; -1.067; -150.29+161.2728j;-150.29-161.2728j];

re_G2=zpk(re_zero_g2,re_pole_g2,re_gain_g2)
re_H2=zpk(re_zero_h2,re_pole_h2,re_gain_h2)

re_gain_g3=[42.799014];
re_zero_g3=[-0.71162; -105.305+107.2025j;-105.305-107.2025j];
re_pole_g3=[-29.636; -0.7824; 0; -1026.075];
re_gain_h3=5.4594238e-6;
re_zero_h3=[-3.5733; -5e6; -104.555+107.2175j;-104.555-107.2175j];
re_pole_h3=[-29.636; -0.7824; -150.29+161.2728j;-150.29-161.2728j];

re_G3=zpk(re_zero_g3,re_pole_g3,re_gain_g3)
re_H3=zpk(re_zero_h3,re_pole_h3,re_gain_h3)

re_gain_g4=[95.074737];
re_zero_g4=[-1.1854; -105.305+107.2025j;-105.305-107.2025j];
re_pole_g4=[-112.97; -1.5075; 0; -1026.075];
re_gain_h4=1.3599653e-5;
re_zero_h4=[ -11.424; -5e6; -104.555+107.2175j;-104.555-107.2175j];
re_pole_h4=[-112.97; -1.5075; -150.29+161.27285j;-150.29-161.27285j];

re_G4=zpk(re_zero_g4,re_pole_g4,re_gain_g4)
re_H4=zpk(re_zero_h4,re_pole_h4,re_gain_h4)

[num_g1, den_g1] = tfdata(re_G1, 'v');
[num_h1, den_h1] = tfdata(re_H1, 'v');
[num_g2, den_g2] = tfdata(re_G2, 'v');
[num_g3, den_g3] = tfdata(re_G3, 'v');
[num_g4, den_g4] = tfdata(re_G4, 'v');
[num_h2, den_h2] = tfdata(re_H2, 'v');
[num_h3, den_h3] = tfdata(re_H3, 'v');
[num_h4, den_h4] = tfdata(re_H4, 'v');

num_G=[num_g1;num_g2;num_g3;num_g4]
num_H=[num_h1;num_h2;num_h3;num_h4]
den_G=[den_g1;den_g2;den_g3;den_g4]
den_H=[den_h1;den_h2;den_h3;den_h4]
G = {G1, G2, G3, G4};
H = {H1, H2, H3, H4};
re_G={re_G1, re_G2, re_G3, re_G4};
re_H={re_H1, re_H2, re_H3, re_H4}
% Loop over the transfer functions
for i = 1:4
    % Convert the transfer function to a state-space model
    sys = ss(re_H{i});
    
    % Compute the coefficient
    co = -sys.C*pinv(sys.A)*sys.B+sys.D;
    
    % Store the coefficient in a variable
    eval(['co' num2str(i) ' = co;']);
end





% ssG1=ss(G1)
% ssG2=ss(G2)
% ssG3=ss(G3)
% ssG4=ss(G4)
% Aa=(ssG1.A+ssG1.A+ssG1.A+ssG1.A)/4
% (Aa-ssG4.A)./Aa
% 
% Ba=(ssG1.B+ssG1.B+ssG1.B+ssG1.B)/4
% (Ba-ssG1.B)./Ba
% ssG2.C












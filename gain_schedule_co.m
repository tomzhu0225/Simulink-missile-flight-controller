x = [0 0 20 20];
y = [1.5 3 1.5 3];


% Define the points at which you want to interpolate the data
[xi, yi] = meshgrid(0:0.03:20, 1.5:0.01:3);
Mi=1.5:0.01:3
ai=0:0.03:20
% Interpolate the data using linear interpolation

for i = 0:4
    znh = [num_H(1,i+1) num_H(2,i+1) num_H(3,i+1) num_H(4,i+1)]
    zdh = [den_H(1,i+1) den_H(2,i+1) den_H(3,i+1) den_H(4,i+1)]
    zng = [num_G(1,i+1) num_G(2,i+1) num_G(3,i+1) num_G(4,i+1)]
    zdg = [den_G(1,i+1) den_G(2,i+1) den_G(3,i+1) den_G(4,i+1)]
    znhi=griddata(x, y, znh, xi, yi, 'linear')
    zdhi=griddata(x, y, zdh, xi, yi, 'linear')
    zngi=griddata(x, y, zng, xi, yi, 'linear')
    zdgi=griddata(x, y, zdg, xi, yi, 'linear')
    eval(['b_H' num2str(4-i) ' = znhi' ]);
    eval(['a_H' num2str(4-i) ' = zdhi' ]);
    eval(['b_G' num2str(4-i) ' = zngi' ]);
    eval(['a_G' num2str(4-i) ' = zdgi' ]);
end
% Plot the interpolated data
mesh(xi, yi, b_G0);
xlabel('alpha')
ylabel('M')
zlabel('b_0')

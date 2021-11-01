clear all; close all; clc;
%--------------------------------------------------------------------------
%Densities
rho = [1.35; 0.95; 1.045];
%--------------------------------------------------------------------------
%diameters in microm
d = [100; 250; 500];
%--------------------------------------------------------------------------
%converting diameters to mm
d = d/1000;
%--------------------------------------------------------------------------
%The total mass of MPs
M = 1;
%==========================================================================
%CASE 1
%--------------------------------------------------------------------------
Number = zeros(3,3);
Area = zeros(3,3);
%--------------------------------------------------------------------------
for i = 1:3
    rho_i = rho(i);
    for j = 1:3
        d_j = d(j);
        [N, A] = Case_1(rho_i,d_j,M);
        Number(i,j) = N;         
        Area(i,j) = A;
    end
end
%--------------------------------------------------------------------------
fprintf('Case 1')
Number 
Area
%==========================================================================
%CASE 2
%--------------------------------------------------------------------------
Number = zeros(3,3);
Area = zeros(3,3);
%--------------------------------------------------------------------------
for i = 1:3
    rho_i = rho(i);
    for j = 1:3
        d_j = d(j);
        [N, A] = Case_2(rho_i,d_j,M);
        Number(i,j) = N;
        Area(i,j) = A;
    end
end
%--------------------------------------------------------------------------
fprintf('Case 2')
Number
Area
%==========================================================================
%CASE 3
%--------------------------------------------------------------------------
Number = zeros(3,3);
Area = zeros(3,3);
%--------------------------------------------------------------------------
d = [0.01; 0.025; 0.03];
%--------------------------------------------------------------------------
h = [0.1; 0.15; 0.2];
%--------------------------------------------------------------------------
for i = 1:3
    rho_i = rho(i);
    for j = 1:3
        d_j = d(j);
        h_j = h(j);
        [N,A] = Case_3 (d_j,h_j,rho_i,M);
        Number(i,j) = N;       
        Area(i,j) = A;
     end
end
%--------------------------------------------------------------------------
fprintf('Case 3')
Number
Area

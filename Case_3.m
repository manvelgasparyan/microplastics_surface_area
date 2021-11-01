function [N,A] = Case_3 (d,h,rho,M)
    %The volume of a particle
    V = (pi*d^2*h)/4;
    %The surface area of a paricle
    a = pi*d*(d/2 + h);
    %Mass of a particle
    m = rho*V;
    %Number of particles
    N = M/m;
    %Total surface area
    A = N*a;
end
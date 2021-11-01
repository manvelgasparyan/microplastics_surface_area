function [N, A] = Case_1(rho,d,M)
    %The volume of a particle
    V = (pi*d^3)/6;
    %The surface area of a paricle
    a = pi*d^2;
    %Mass of a particle
    m = rho*V;
    %Number of particles
    N = M/m;
    %Total surface area
    A = N*a;
end
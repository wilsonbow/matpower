function mpc = case02
% CASE02 - a simple generator and load system.

% This network is from Glover et. al. Power System Analysis and Design 4th
% edition, page 54.

mpc.version = '2';

mpc.baseMVA = 1; % 1 MVA basis

% bus data
% type: 1 = PQ = load; 2 = PV = generator; 3 = ref = ??; 4 = isolated = ??
% What are shunt conductances and susceptances?
%       bus_i   type    Pd      Qd      Gs      Bs      area    Vm      Va      baseKV  zone    Vmax    Vmin
mpc.bus = [
        1       3       0       0       0       0       1       1       0       16      1       1.1     0.9;
        2       1       0.1     0.075   0       0       1       1       0       16      1       1.1     0.9;
];

% generator data
%       bus     Pg      Qg      Qmax    Qmin    Vg      mBase   status  Pmax    Pmin    Pc1     Pc2     Qc1min  Qc1max  Qc2min  Qc2max  ramp_agc    ramp_10     ramp_30     ramp_q  apf
mpc.gen = [
        1       100     75      100     -100    1       100     1       150     0       0       0       0       0       0       0       0           0           0           0       0;
];

% branch data
% from bus to bus
%       fbus    tbus    R       X       B       rateA   rateB   rateC   ratio   angle   status  angmin  angmax
mpc.branch = [
        1       2       0       0       0       250     250     250     0       0       1       -360    360;
];
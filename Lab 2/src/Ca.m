clear;
N = 1000;
alpha = 0.5;
delta = DTS(0 : 1000, [1 zeros(1, 1000)]);
he = delta.filter([1 zeros(1, N - 1) alpha], [1]);
DTS.Figures("v", ...
    struct("xlabel", "n", "ylabel", "h_e[n]", "grid", "on", "xlim", [0 N]), ...
    { he.sInf("h_e[n]") } ...
);
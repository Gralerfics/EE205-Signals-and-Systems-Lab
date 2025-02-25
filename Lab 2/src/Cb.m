clear;
N = 1000;
alpha = 0.5;
x = DTS(0 : 1000, [1 rand(1, 1000) .* rand(1, 1000)]);
y = x.filter([1 zeros(1, N - 1) alpha], [1]);
z = y.filter([1], [1 zeros(1, N - 1) alpha]);
DTS.Figures("v", ...
    struct("xlabel", "n", "ylabel", "x[n]", "grid", "on", "xlim", [0 N]), ...
    { x.sInf("x[n]", "#01AFEE", ".") }, ...
    struct("xlabel", "n", "ylabel", "z[n]", "grid", "on", "xlim", [0 N]), ...
    { z.sInf("z[n]", "#2E9F79", ".") } ...
);

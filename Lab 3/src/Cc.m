clear;

w_0 = 2 * pi / 20;
a_x = DTS(w_0 * (0 : 19), [0, 3 / 4, zeros(1, 7), -1 / 2, 0, - 1 / 2, zeros(1, 7), 3 / 4]);

DTS.Figures("v", ...
    struct("xlabel", "k", "ylabel", "a_k", "xlim", [0, 2 * pi], "ylim", [-0.75, 1.5], "grid", "on"), ...
    { a_x.sInf("a_k", "r") } ...
);
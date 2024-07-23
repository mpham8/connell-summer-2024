function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dr_klim_jul11_2020.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 8
    T = [T; NaN(8 - size(T, 1), 1)];
end
T(8) = getPowerDeriv(y(3),(-params(2)),1);
end

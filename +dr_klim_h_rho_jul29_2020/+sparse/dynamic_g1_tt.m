function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dr_klim_h_rho_jul29_2020.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 20
    T = [T; NaN(20 - size(T, 1), 1)];
end
T(18) = getPowerDeriv(y(19),(-params(3)),1);
T(19) = getPowerDeriv(y(35),(-params(3)),1);
T(20) = getPowerDeriv(1+x(3),(-1),1);
end

function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = dr_ylim_jul8_2020.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(12, 1);
    residual(1) = (y(3)) - (x(it_, 1)*T(1));
    residual(2) = (y(4)) - (y(1)+y(1)*params(7)+y(5)+y(7)+params(6)-y(3)-x(it_, 3));
    residual(3) = (T(2)) - (T(3)*(1+y(6))*T(4));
    residual(4) = (y(7)) - (y(2)*T(5));
    residual(5) = (y(8)) - (T(3)*(y(17)*T(8)+T(6)*params(1)*T(4)*(1-x(it_, 2))*y(19)+T(6)*params(1)*params(8)*y(18)*y(19)));
    residual(6) = (y(9)) - (y(7)+y(2)*(1-params(3))-y(2)*T(9));
    residual(7) = (y(10)) - (y(17)*T(3)*(y(6)-params(7)));
    residual(8) = (y(13)) - (y(3)*params(8));
    residual(9) = (y(11)) - (y(13)-y(4));
    residual(10) = (y(11)) - (max(0,y(11)-y(10)));
    residual(11) = (y(12)) - (y(6)-params(7));
    residual(12) = (y(14)) - (x(it_, 1));

end

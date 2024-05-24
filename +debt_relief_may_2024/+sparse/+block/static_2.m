function [y, T, residual, g1] = static_2(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(14, 1);
  residual(1)=(y(2))-(y(2)+y(2)*params(7)+y(3)+y(5)+y(8)+y(1)*params(6)-y(1)-x(4));
  T(1)=y(3)^(-params(3));
  T(2)=(1+x(3))^(-1);
  residual(2)=(T(1))-(T(1)*T(2)*(1+y(4)));
  residual(3)=(y(5))-(y(7)*(params(4)+1/params(5)*(1-T(1)/y(6))));
  T(3)=params(5)/2;
  T(4)=params(4)^2;
  T(5)=1-params(4)+T(3)*((y(5)/y(7))^2-T(4));
  T(6)=y(10)^params(2);
  T(7)=y(7)^(params(1)-1);
  T(8)=T(7)*params(1)*T(1)*(1-x(2))*y(17);
  residual(4)=(y(6))-(params(9)*y(11)+T(2)*(y(6)*T(5)+T(6)*T(8)));
  T(9)=T(3)*(y(5)/y(7)-params(4))^2;
  residual(5)=(y(7))-(y(5)+y(7)*(1-params(4))-y(7)*T(9));
  residual(6)=(y(8))-(y(10)*(params(4)+1/params(5)*(1-T(1)/y(9))));
  T(10)=y(7)^params(1);
  T(11)=1-params(4)+T(3)*((y(8)/y(10))^2-T(4));
  T(12)=y(10)^(params(2)-1);
  residual(7)=(y(9))-(T(2)*(y(9)*T(11)+T(12)*T(10)*y(17)*(params(2)-params(10))*T(1)*(1-x(2))));
  T(13)=T(3)*(y(8)/y(10)-params(4))^2;
  residual(8)=(y(10))-(y(8)+y(10)*(1-params(4))-y(10)*T(13));
  residual(9)=(y(11))-(T(1)*T(2)*(y(4)-params(7)));
  residual(10)=(y(14))-(y(7)*params(9));
  residual(11)=(y(12))-(y(14)-y(2));
  residual(12)=(y(12))-(max(0,y(12)-y(11)));
  T(14)=y(10)^(params(2)-params(10));
  residual(13)=(y(1))-(y(16)*T(10)*T(14));
  residual(14)=(y(16))-(x(1)*y(10)^params(10));
  T(15)=getPowerDeriv(y(3),(-params(3)),1);
  T(16)=getPowerDeriv(y(7),params(1),1);
if nargout > 3
    g1_v = NaN(46, 1);
g1_v(1)=1-(1+params(7));
g1_v(2)=1;
g1_v(3)=(-(T(1)*T(2)));
g1_v(4)=(-(T(1)*T(2)));
g1_v(5)=(-(y(7)*1/params(5)*(-((-T(1))/(y(6)*y(6))))));
g1_v(6)=1-T(2)*T(5);
g1_v(7)=(-(T(2)*T(8)*getPowerDeriv(y(10),params(2),1)));
g1_v(8)=(-(params(4)+1/params(5)*(1-T(1)/y(9))));
g1_v(9)=(-(T(2)*(y(9)*T(3)*2*y(8)/y(10)*(-y(8))/(y(10)*y(10))+T(10)*y(17)*(params(2)-params(10))*T(1)*(1-x(2))*getPowerDeriv(y(10),params(2)-1,1))));
g1_v(10)=1-(1-params(4)-(T(13)+y(10)*T(3)*2*(y(8)/y(10)-params(4))*(-y(8))/(y(10)*y(10))));
g1_v(11)=(-(y(16)*T(10)*getPowerDeriv(y(10),params(2)-params(10),1)));
g1_v(12)=(-(x(1)*getPowerDeriv(y(10),params(10),1)));
g1_v(13)=(-1);
g1_v(14)=1;
g1_v(15)=(-(T(2)*y(6)*T(3)*1/y(7)*2*y(5)/y(7)));
g1_v(16)=(-(1-y(7)*T(3)*1/y(7)*2*(y(5)/y(7)-params(4))));
g1_v(17)=(-(y(10)*1/params(5)*(-((-T(1))/(y(9)*y(9))))));
g1_v(18)=1-T(2)*T(11);
g1_v(19)=(-(params(4)+1/params(5)*(1-T(1)/y(6))));
g1_v(20)=(-(T(2)*(y(6)*T(3)*2*y(5)/y(7)*(-y(5))/(y(7)*y(7))+T(6)*params(1)*T(1)*(1-x(2))*y(17)*getPowerDeriv(y(7),params(1)-1,1))));
g1_v(21)=1-(1-params(4)-(T(9)+y(7)*T(3)*2*(y(5)/y(7)-params(4))*(-y(5))/(y(7)*y(7))));
g1_v(22)=(-(T(2)*T(12)*y(17)*(params(2)-params(10))*T(1)*(1-x(2))*T(16)));
g1_v(23)=(-params(9));
g1_v(24)=(-(T(14)*y(16)*T(16)));
g1_v(25)=(-1);
g1_v(26)=1;
g1_v(27)=(-(T(2)*y(9)*T(3)*1/y(10)*2*y(8)/y(10)));
g1_v(28)=(-(1-y(10)*T(3)*1/y(10)*2*(y(8)/y(10)-params(4))));
g1_v(29)=(-1);
g1_v(30)=T(15)-T(2)*(1+y(4))*T(15);
g1_v(31)=(-(y(7)*1/params(5)*(-(T(15)/y(6)))));
g1_v(32)=(-(T(2)*T(6)*T(7)*y(17)*params(1)*(1-x(2))*T(15)));
g1_v(33)=(-(y(10)*1/params(5)*(-(T(15)/y(9)))));
g1_v(34)=(-(T(2)*T(12)*T(10)*y(17)*(params(2)-params(10))*(1-x(2))*T(15)));
g1_v(35)=(-(T(2)*(y(4)-params(7))*T(15)));
g1_v(36)=1;
g1_v(37)=(-1);
g1_v(38)=1;
g1_v(39)=1-(1-(0>y(12)-y(11)));
g1_v(40)=(-params(9));
g1_v(41)=1;
g1_v(42)=1-(0>y(12)-y(11));
g1_v(43)=(-(params(6)-1));
g1_v(44)=1;
g1_v(45)=(-(T(10)*T(14)));
g1_v(46)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 14, 14);
end
end

function Hlt = HssLt(in1,Qrun)
%HSSLT
%    HLT = HSSLT(IN1,QRUN)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    23-Dec-2015 20:55:03

D = in1(:,3);
Kh = in1(:,2);
Q = in1(:,1);
R = in1(:,4);
t2 = Kh.*Q;
t3 = D-Q+t2;
t4 = 1.0./t3;
t5 = Q-t2;
t6 = t4.*t5;
t7 = t6+1.0;
t8 = R.*t7;
t9 = 1.0./Q;
t10 = Q+1.26e-2;
t11 = t8-t4.*t5.*t9.*t10;
t12 = 1.0./D;
t13 = 1.0./R;
t14 = Kh.*6.3e1;
t15 = D.*R.*5.0e3;
t16 = Kh.*Qrun.*5.0e3;
t18 = Qrun.*5.0e3;
t17 = t14+t15+t16-t18-6.3e1;
t19 = t12.*t13.*t17.*2.0e-4;
t20 = Qrun+1.26e-2;
t21 = D.*(1.0./1.9e1);
t22 = Kh.^2;
t23 = Kh.*Q.*(1.0./1.9e1);
t24 = Q.*(-1.0./1.9e1)+t21-t22.*3.985e-3+t23+5.772091578947369e-2;
Hlt = [t4.*(Q-Kh.*Q)+t11.*(t12.*t13.*t17.*1.023784901758014e-3-5.118924508790072).*(t4.*t5.*1.8373e-1-1.0./2.0e1),D-Q+t2-t3.*t11.*(1.9e1./2.0e1)+1.1487e-4,R.*(t19+(1.0./R.^2.*t4.*t12.*t17.*t20.*t24.*(Kh-1.0).*3.730299356523361e-3)./t7-1.0).*(-9.9e1./1.0e2)-1.0,Kh.*(-7.97e-3)-Q-t10.*(t19-1.0).*(9.9e1./1.0e2)+t12.*t13.*t17.*t20.*t24.*3.692996362958128e-3];
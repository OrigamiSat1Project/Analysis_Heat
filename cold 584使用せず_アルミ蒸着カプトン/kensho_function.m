function dy = kensho_function(t,y)

load('kensho_atai.mat')

dy = zeros(N,1);

%------------------------------------------------------------------------
%äOïîîMì¸óÕÇ…Ç®ÇØÇÈAsb,Aab,AebÇÃéûä‘ïœâª
Asb = zeros(N:1);
Aeb = zeros(N:1);
Aab = zeros(N:1);

%é¸ä˙Tc,ëæózåıÉ¿äpbeta
Tc = 90*60;
omega = 1/15*pi/180;
beta = 38*pi/180;

%ëæózåı
for n=0:18
    
if (0+n*Tc <= t)&&(t <= 1350+n*Tc)

    Asb(1:N) = As1(1:N,6)*cos(beta)*sin(2*omega*t)+As1(1:N,2)*sqrt((sin(beta))^2+(cos(beta))^2*(cos(2*omega*t))^2);
        
elseif (1350+n*Tc < t)&&(t <= 1800+n*Tc)
        
    Asb(1:N) = As1(1:N,1)*(-cos(beta)*sin(2*omega*t))+As1(1:N,2)*sqrt((sin(beta))^2+(cos(beta))^2*(cos(2*omega*t))^2);
    
elseif (1800+n*Tc < t)&&(t <= 3600+n*Tc)
        
    Asb(1:N) = 0;    

elseif (3600+n*Tc < t)&&(t <= 4050+n*Tc)
        
    Asb(1:N) = As1(1:N,6)*cos(beta)*sin(2*omega*t)+As1(1:N,2)*sqrt((sin(beta))^2+(cos(beta))^2*(cos(2*omega*t))^2);    

elseif (4050+n*Tc < t)&&(t <= 5400+n*Tc)
        
    Asb(1:N) = As1(1:N,1)*(-cos(beta)*sin(2*omega*t))+As1(1:N,2)*sqrt((sin(beta))^2+(cos(beta))^2*(cos(2*omega*t))^2);    

end

end

%ÉAÉãÇ◊Éh
for n=0:18
    
if (0+n*Tc <= t)&&(t <= 675+n*Tc)

    Aab(1:N) = As1(1:N,1)*sin(omega*t)+As1(1:N,4)*(-cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,5)*(cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));
    
elseif (675+n*Tc < t)&&(t <= 1350+n*Tc)
        
    Aab(1:N) = As1(1:N,1)*sin(omega*t)+As1(1:N,2)*(cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,5)*(cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));

elseif (1350+n*Tc < t)&&(t <= 1800+n*Tc)
        
    Aab(1:N) = As1(1:N,1)*sin(omega*t)+As1(1:N,4)*(-cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,3)*(-cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));

elseif (1800+n*Tc < t)&&(t <= 3600+n*Tc)
        
    Aab(1:N) = 0;
    
elseif (3600+n*Tc < t)&&(t <= 4050+n*Tc)
        
    Aab(1:N) = As1(1:N,6)*(-sin(omega*t))+As1(1:N,4)*(-cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,3)*(-cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));
    
elseif (4050+n*Tc < t)&&(t <= 4725+n*Tc)
        
    Aab(1:N) = As1(1:N,6)*(-sin(omega*t))+As1(1:N,2)*(cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,5)*(cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));
    
elseif (4725+n*Tc < t)&&(t < 5400+n*Tc)
        
    Aab(1:N) = As1(1:N,6)*(-sin(omega*t))+As1(1:N,4)*(-cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,5)*(cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));
                
end
    
end

%ínãÖê‘äOÇ”Ç≠éÀ(ëæózè∆éÀÇµÇ»Ç¢Ç∆Ç´Ç…0Ç…Ç»ÇÁÇ»Ç¢)
for n=0:18
    
if (0+n*Tc <= t)&&(t <= 675+n*Tc)

    Aeb(1:N) = As1(1:N,1)*sin(omega*t)+As1(1:N,4)*(-cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,5)*(cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));
    
elseif (675+n*Tc < t)&&(t <= 1350+n*Tc)
        
    Aeb(1:N) = As1(1:N,1)*sin(omega*t)+As1(1:N,2)*(cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,5)*(cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));

elseif (1350+n*Tc < t)&&(t <= 2025+n*Tc)
        
    Aeb(1:N) = As1(1:N,1)*sin(omega*t)+As1(1:N,4)*(-cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,3)*(-cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));

elseif (2025+n*Tc < t)&&(t <= 2700+n*Tc)
        
    Aeb(1:N) = As1(1:N,1)*sin(omega*t)+As1(1:N,2)*(cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,3)*(-cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));

elseif (2700+n*Tc < t)&&(t <= 3375+n*Tc)
        
    Aeb(1:N) = As1(1:N,6)*(-sin(omega*t))+As1(1:N,2)*(cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,3)*(-cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));

elseif (3375+n*Tc < t)&&(t <= 4050+n*Tc)
        
    Aeb(1:N) = As1(1:N,6)*(-sin(omega*t))+As1(1:N,4)*(-cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,3)*(-cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));

elseif (4050+n*Tc < t)&&(t <= 4725+n*Tc)
        
    Aeb(1:N) = As1(1:N,6)*(-sin(omega*t))+As1(1:N,2)*(cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,5)*(cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));

elseif (4725+n*Tc < t)&&(t < 5400+n*Tc)
        
    Aeb(1:N) = As1(1:N,6)*(-sin(omega*t))+As1(1:N,4)*(-cos(omega*t)*cos(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))-sin(omega*t)*sin(2*omega*t)*sin(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))))+As1(1:N,5)*(cos(omega*t)*cos(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2)))+sin(omega*t)*sin(2*omega*t)*cos(pi/2-acos(-cos(beta)*sin(2*omega*t)/sqrt((sin(beta))^2+(cos(beta))^2*(sin(2*omega*t))^2))));
        
end
    
end





%------------------------------------------------------------------------

%ì‡ïîî≠îMó 

Qpa = zeros(N,3);
%nominal=1,downlink(FM)=2,downlink(5.84)=3
Qpa(3,1) = 0.53;
Qpa(11,1) = 0.26;
Qpa(13,1) = 0.4;

Qpa(3,2) = 3.13;
Qpa(11,2) = 0.26;
Qpa(13,2) = 0.4;

Qpa(2,3) = 16.53;
Qpa(3,3) = 0.53;
Qpa(11,3) = 0.26;
Qpa(13,3) = 0.4;

Qp = zeros(N,1);

%nominalÇÃÇ›

Qp(1:N) = Qpa(1:N,1);


%battery heat
AAA = evalin('base','ABC');
DDD = evalin('base','DEF');
GGG = evalin('base','GHI');

if AAA == 0
   if y(5) < 273
   AAA = 1;
   Qp(5) = 0.2;
   assignin('base','ABC',AAA)
   end
else
   if y(5) > 278
   AAA = 0;
   Qp(5) = 0;
   assignin('base','ABC',AAA)
   else
   Qp(5) = 0.2;    
   end
end

if DDD == 0
   if y(7) < 273
   DDD = 1;
   Qp(7) = 0.2;
   assignin('base','DEF',DDD)
   end
else 
   if y(7) > 278
   DDD = 0;
   Qp(7) = 0;
   assignin('base','DEF',DDD)
   else
   Qp(7) = 0.2;    
   end
end

if GGG == 0
   if y(9) < 273
   GGG = 1;
   Qp(9) = 0.2;
   assignin('base','GHI',GGG)
   end
else 
   if y(9) > 278
   GGG = 0;
   Qp(9) = 0;
   assignin('base','GHI',GGG)
   else
   Qp(9) = 0.2;
   end
end
%------------------------------------------------------------------------ 

%Ç”Ç≠éÀÇ…ÇÊÇÈîMåä∑ó 
%ï¬ãÛä‘

Qr = zeros(N,1);
Qr1 = zeros(N,1);
Qr2 = zeros(N,1);
Qr3 = zeros(N,1);
Qr4 = zeros(N,1);
Qr5 = zeros(N,1);
Qr6 = zeros(N,1);
Qr7 = zeros(N,1);

Ja1 = zeros(6,1);
Ja2 = zeros(6,1);
Ja3 = zeros(6,1);
Ja4 = zeros(6,1);
Ja5 = zeros(6,1);
Ja6 = zeros(6,1);
Ja7 = zeros(6,1);

J1 = zeros(N,1);
J2 = zeros(N,1);
J3 = zeros(N,1);
J4 = zeros(N,1);
J5 = zeros(N,1);
J6 = zeros(N,1);
J7 = zeros(N,1);

%------------------------------------------------------------------------

B1 = [ip(10)*o*y(10)^4
      ip(11)*o*y(11)^4
      ip(50)*o*y(50)^4
      ip(61)*o*y(61)^4
      ip(82)*o*y(82)^4
      ip(83)*o*y(83)^4];

B2 = [ip(11)*o*y(11)^4
      ip(12)*o*y(12)^4
      ip(27)*o*y(27)^4
      ip(35)*o*y(35)^4
      ip(43)*o*y(43)^4
      ip(62)*o*y(62)^4];

B3 = [ip(12)*o*y(12)^4
      ip(13)*o*y(13)^4
      ip(28)*o*y(28)^4
      ip(36)*o*y(36)^4
      ip(44)*o*y(44)^4
      ip(63)*o*y(63)^4];

B4 = [ip(13)*o*y(13)^4
      ip(14)*o*y(14)^4
      ip(29)*o*y(29)^4
      ip(37)*o*y(37)^4
      ip(45)*o*y(45)^4
      ip(64)*o*y(64)^4];

B5 = [ip(14)*o*y(14)^4
      ip(15)*o*y(15)^4
      ip(54)*o*y(54)^4
      ip(55)*o*y(55)^4
      ip(57)*o*y(57)^4
      ip(59)*o*y(59)^4];

B6 = [ip(15)*o*y(15)^4
      ip(38)*o*y(38)^4
      ip(56)*o*y(56)^4
      ip(58)*o*y(58)^4
      ip(60)*o*y(60)^4
      ip(72)*o*y(72)^4];

B7 = [ip(75)*o*y(75)^4
      ip(76)*o*y(76)^4
      ip(77)*o*y(77)^4
      ip(78)*o*y(78)^4
      ip(79)*o*y(79)^4
      ip(90)*o*y(90)^4];

%------------------------------------------------------------------------

Ja1(1:6) = Aa1\B1;
Ja2(1:6) = Aa2\B2;
Ja3(1:6) = Aa3\B3;
Ja4(1:6) = Aa4\B4;
Ja5(1:6) = Aa5\B5;
Ja6(1:6) = Aa6\B6;
Ja7(1:6) = Aa7\B7;

J1(10) = Ja1(1);
J1(11) = Ja1(2);
J1(50) = Ja1(3);
J1(61) = Ja1(4);
J1(82) = Ja1(5);
J1(83) = Ja1(6);

J2(11) = Ja2(1);
J2(12) = Ja2(2);
J2(27) = Ja2(3);
J2(35) = Ja2(4);
J2(43) = Ja2(5);
J2(62) = Ja2(6);

J3(12) = Ja3(1);
J3(13) = Ja3(2);
J3(28) = Ja3(3);
J3(36) = Ja3(4);
J3(44) = Ja3(5);
J3(63) = Ja3(6);

J4(13) = Ja4(1);
J4(14) = Ja4(2);
J4(29) = Ja4(3);
J4(37) = Ja4(4);
J4(45) = Ja4(5);
J4(64) = Ja4(6);

J5(14) = Ja5(1);
J5(15) = Ja5(2);
J5(54) = Ja5(3);
J5(55) = Ja5(4);
J5(57) = Ja5(5);
J5(59) = Ja5(6);

J6(15) = Ja6(1);
J6(38) = Ja6(2);
J6(56) = Ja6(3);
J6(58) = Ja6(4);
J6(60) = Ja6(5);
J6(72) = Ja6(6);

J7(75) = Ja7(1);
J7(76) = Ja7(2);
J7(77) = Ja7(3);
J7(78) = Ja7(4);
J7(79) = Ja7(5);
J7(90) = Ja7(6);

%------------------------------------------------------------------------

Qr1(10) = ip(10)*o*Ac1(10)/10^6*y(10)^4-ip(10)*Ac1(10)/10^6*(Fc(10,11)*J1(11)+Fc(10,50)*J1(50)+Fc(10,61)*J1(61)+Fc(10,82)*J1(82)+Fc(10,83)*J1(83));
Qr1(11) = ip(11)*o*Ac1(11)/10^6*y(11)^4-ip(11)*Ac1(11)/10^6*(Fc(11,10)*J1(10)+Fc(11,50)*J1(50)+Fc(11,61)*J1(61)+Fc(11,82)*J1(82)+Fc(11,83)*J1(83));
Qr1(50) = ip(50)*o*Ac1(50)/10^6*y(50)^4-ip(50)*Ac1(50)/10^6*(Fc(50,10)*J1(10)+Fc(50,11)*J1(11)+Fc(50,61)*J1(61)+Fc(50,82)*J1(82)+Fc(50,83)*J1(83));
Qr1(61) = ip(61)*o*Ac1(61)/10^6*y(61)^4-ip(61)*Ac1(61)/10^6*(Fc(61,10)*J1(10)+Fc(61,11)*J1(11)+Fc(61,50)*J1(50)+Fc(61,82)*J1(82)+Fc(61,83)*J1(83));
Qr1(82) = ip(82)*o*Ac1(82)/10^6*y(82)^4-ip(82)*Ac1(82)/10^6*(Fc(82,10)*J1(10)+Fc(82,11)*J1(11)+Fc(82,50)*J1(50)+Fc(82,61)*J1(61)+Fc(82,83)*J1(83));
Qr1(83) = ip(83)*o*Ac1(83)/10^6*y(83)^4-ip(83)*Ac1(83)/10^6*(Fc(83,10)*J1(10)+Fc(83,11)*J1(11)+Fc(83,50)*J1(50)+Fc(83,61)*J1(61)+Fc(83,82)*J1(82));

Qr2(11) = ip(11)*o*Ac2(11)/10^6*y(11)^4-ip(11)*Ac2(11)/10^6*(Fc(11,12)*J2(12)+Fc(11,27)*J2(27)+Fc(11,35)*J2(35)+Fc(11,43)*J2(43)+Fc(11,62)*J2(62));
Qr2(12) = ip(12)*o*Ac2(12)/10^6*y(12)^4-ip(12)*Ac2(12)/10^6*(Fc(12,11)*J2(11)+Fc(12,27)*J2(27)+Fc(12,35)*J2(35)+Fc(12,43)*J2(43)+Fc(12,62)*J2(62));
Qr2(27) = ip(27)*o*Ac2(27)/10^6*y(27)^4-ip(27)*Ac2(27)/10^6*(Fc(27,11)*J2(11)+Fc(27,12)*J2(12)+Fc(27,35)*J2(35)+Fc(27,43)*J2(43)+Fc(27,62)*J2(62));
Qr2(35) = ip(35)*o*Ac2(35)/10^6*y(35)^4-ip(35)*Ac2(35)/10^6*(Fc(35,11)*J2(11)+Fc(35,12)*J2(12)+Fc(35,27)*J2(27)+Fc(35,43)*J2(43)+Fc(35,62)*J2(62));
Qr2(43) = ip(43)*o*Ac2(43)/10^6*y(43)^4-ip(43)*Ac2(43)/10^6*(Fc(43,11)*J2(11)+Fc(43,12)*J2(12)+Fc(43,27)*J2(27)+Fc(43,35)*J2(35)+Fc(43,62)*J2(62));
Qr2(62) = ip(62)*o*Ac2(62)/10^6*y(62)^4-ip(62)*Ac2(62)/10^6*(Fc(62,11)*J2(11)+Fc(62,12)*J2(12)+Fc(62,27)*J2(27)+Fc(62,35)*J2(35)+Fc(62,43)*J2(43));

Qr3(12) = ip(12)*o*Ac3(12)/10^6*y(12)^4-ip(12)*Ac3(12)/10^6*(Fc(12,13)*J3(13)+Fc(12,28)*J3(28)+Fc(12,36)*J3(36)+Fc(12,44)*J3(44)+Fc(12,63)*J3(63));
Qr3(13) = ip(13)*o*Ac3(13)/10^6*y(13)^4-ip(13)*Ac3(13)/10^6*(Fc(13,12)*J3(12)+Fc(13,28)*J3(28)+Fc(13,36)*J3(36)+Fc(13,44)*J3(44)+Fc(13,63)*J3(63));
Qr3(28) = ip(28)*o*Ac3(28)/10^6*y(28)^4-ip(28)*Ac3(28)/10^6*(Fc(28,12)*J3(12)+Fc(28,13)*J3(13)+Fc(28,36)*J3(36)+Fc(28,44)*J3(44)+Fc(28,63)*J3(63));
Qr3(36) = ip(36)*o*Ac3(36)/10^6*y(36)^4-ip(36)*Ac3(36)/10^6*(Fc(36,12)*J3(12)+Fc(36,13)*J3(13)+Fc(36,28)*J3(28)+Fc(36,44)*J3(44)+Fc(36,63)*J3(63));
Qr3(44) = ip(44)*o*Ac3(44)/10^6*y(44)^4-ip(44)*Ac3(44)/10^6*(Fc(44,12)*J3(12)+Fc(44,13)*J3(13)+Fc(44,28)*J3(28)+Fc(44,36)*J3(36)+Fc(44,63)*J3(63));
Qr3(63) = ip(63)*o*Ac3(63)/10^6*y(63)^4-ip(63)*Ac3(63)/10^6*(Fc(63,12)*J3(12)+Fc(63,13)*J3(13)+Fc(63,28)*J3(28)+Fc(63,36)*J3(36)+Fc(63,44)*J3(44));

Qr4(13) = ip(13)*o*Ac4(13)/10^6*y(13)^4-ip(13)*Ac4(13)/10^6*(Fc(13,14)*J4(14)+Fc(13,29)*J4(29)+Fc(13,37)*J4(37)+Fc(13,45)*J4(45)+Fc(13,64)*J4(64));
Qr4(14) = ip(14)*o*Ac4(14)/10^6*y(14)^4-ip(14)*Ac4(14)/10^6*(Fc(14,13)*J4(13)+Fc(14,29)*J4(29)+Fc(14,37)*J4(37)+Fc(14,45)*J4(45)+Fc(14,64)*J4(64));
Qr4(29) = ip(29)*o*Ac4(29)/10^6*y(29)^4-ip(29)*Ac4(29)/10^6*(Fc(29,13)*J4(13)+Fc(29,14)*J4(14)+Fc(29,37)*J4(37)+Fc(29,45)*J4(45)+Fc(29,64)*J4(64));
Qr4(37) = ip(37)*o*Ac4(37)/10^6*y(37)^4-ip(37)*Ac4(37)/10^6*(Fc(37,13)*J4(13)+Fc(37,14)*J4(14)+Fc(37,29)*J4(29)+Fc(37,45)*J4(45)+Fc(37,64)*J4(64));
Qr4(45) = ip(45)*o*Ac4(45)/10^6*y(45)^4-ip(45)*Ac4(45)/10^6*(Fc(45,13)*J4(13)+Fc(45,14)*J4(14)+Fc(45,29)*J4(29)+Fc(45,37)*J4(37)+Fc(45,64)*J4(64));
Qr4(64) = ip(64)*o*Ac4(64)/10^6*y(64)^4-ip(64)*Ac4(64)/10^6*(Fc(64,13)*J4(13)+Fc(64,14)*J4(14)+Fc(64,29)*J4(29)+Fc(64,37)*J4(37)+Fc(64,45)*J4(45));

Qr5(14) = ip(14)*o*Ac5(14)/10^6*y(14)^4-ip(14)*Ac5(14)/10^6*(Fc(14,15)*J5(15)+Fc(14,54)*J5(54)+Fc(14,55)*J5(55)+Fc(14,57)*J5(57)+Fc(14,59)*J4(59));
Qr5(15) = ip(15)*o*Ac5(15)/10^6*y(15)^4-ip(15)*Ac5(15)/10^6*(Fc(15,14)*J5(14)+Fc(15,54)*J5(54)+Fc(15,55)*J5(55)+Fc(15,57)*J5(57)+Fc(15,59)*J4(59));
Qr5(54) = ip(54)*o*Ac5(54)/10^6*y(54)^4-ip(54)*Ac5(54)/10^6*(Fc(54,14)*J5(14)+Fc(54,15)*J5(15)+Fc(54,55)*J5(55)+Fc(54,57)*J5(57)+Fc(54,59)*J4(59));
Qr5(55) = ip(55)*o*Ac5(55)/10^6*y(55)^4-ip(55)*Ac5(55)/10^6*(Fc(55,14)*J5(14)+Fc(55,15)*J5(15)+Fc(55,54)*J5(54)+Fc(55,57)*J5(57)+Fc(55,59)*J4(59));
Qr5(57) = ip(57)*o*Ac5(57)/10^6*y(57)^4-ip(57)*Ac5(57)/10^6*(Fc(57,14)*J5(14)+Fc(57,15)*J5(15)+Fc(57,54)*J5(54)+Fc(57,55)*J5(55)+Fc(57,59)*J4(59));
Qr5(59) = ip(59)*o*Ac5(59)/10^6*y(59)^4-ip(59)*Ac5(59)/10^6*(Fc(59,14)*J5(14)+Fc(59,15)*J5(15)+Fc(59,54)*J5(54)+Fc(59,55)*J5(55)+Fc(59,57)*J4(57));

Qr6(15) = ip(15)*o*Ac6(15)/10^6*y(15)^4-ip(15)*Ac6(15)/10^6*(Fc(15,38)*J6(38)+Fc(15,56)*J6(56)+Fc(15,58)*J6(58)+Fc(15,60)*J6(60)+Fc(15,72)*J6(72));
Qr6(38) = ip(38)*o*Ac6(38)/10^6*y(38)^4-ip(38)*Ac6(38)/10^6*(Fc(38,15)*J6(15)+Fc(38,56)*J6(56)+Fc(38,58)*J6(58)+Fc(38,60)*J6(60)+Fc(38,72)*J6(72));
Qr6(56) = ip(56)*o*Ac6(56)/10^6*y(56)^4-ip(56)*Ac6(56)/10^6*(Fc(56,15)*J6(15)+Fc(56,38)*J6(38)+Fc(56,58)*J6(58)+Fc(56,60)*J6(60)+Fc(56,72)*J6(72));
Qr6(58) = ip(58)*o*Ac6(58)/10^6*y(58)^4-ip(58)*Ac6(58)/10^6*(Fc(58,15)*J6(15)+Fc(58,38)*J6(38)+Fc(58,56)*J6(56)+Fc(58,60)*J6(60)+Fc(58,72)*J6(72));
Qr6(60) = ip(60)*o*Ac6(60)/10^6*y(60)^4-ip(60)*Ac6(60)/10^6*(Fc(60,15)*J6(15)+Fc(60,38)*J6(38)+Fc(60,56)*J6(56)+Fc(60,58)*J6(58)+Fc(60,72)*J6(72));
Qr6(72) = ip(72)*o*Ac6(72)/10^6*y(72)^4-ip(72)*Ac6(72)/10^6*(Fc(72,15)*J6(15)+Fc(72,38)*J6(38)+Fc(72,56)*J6(56)+Fc(72,58)*J6(58)+Fc(72,60)*J6(60));

Qr7(75) = ip(75)*o*Ac7(75)/10^6*y(75)^4-ip(75)*Ac7(75)/10^6*(Fc(75,76)*J7(76)+Fc(75,77)*J7(77)+Fc(75,78)*J7(78)+Fc(75,79)*J7(79)+Fc(75,90)*J7(90));
Qr7(76) = ip(76)*o*Ac7(76)/10^6*y(76)^4-ip(76)*Ac7(76)/10^6*(Fc(76,75)*J7(75)+Fc(76,77)*J7(77)+Fc(76,78)*J7(78)+Fc(76,79)*J7(79)+Fc(76,90)*J7(90));
Qr7(77) = ip(77)*o*Ac7(77)/10^6*y(77)^4-ip(77)*Ac7(77)/10^6*(Fc(77,75)*J7(75)+Fc(77,76)*J7(76)+Fc(77,78)*J7(78)+Fc(77,79)*J7(79)+Fc(77,90)*J7(90));
Qr7(78) = ip(78)*o*Ac7(78)/10^6*y(78)^4-ip(78)*Ac7(78)/10^6*(Fc(78,75)*J7(75)+Fc(78,76)*J7(76)+Fc(78,77)*J7(77)+Fc(78,79)*J7(79)+Fc(78,90)*J7(90));
Qr7(79) = ip(79)*o*Ac7(79)/10^6*y(79)^4-ip(79)*Ac7(79)/10^6*(Fc(79,75)*J7(75)+Fc(79,76)*J7(76)+Fc(79,77)*J7(77)+Fc(79,78)*J7(78)+Fc(79,90)*J7(90));
Qr7(90) = ip(90)*o*Ac7(90)/10^6*y(90)^4-ip(90)*Ac7(90)/10^6*(Fc(90,75)*J7(75)+Fc(90,76)*J7(76)+Fc(90,77)*J7(77)+Fc(90,78)*J7(78)+Fc(90,79)*J7(79));


Qr(1:N) = Qr1(1:N)+Qr2(1:N)+Qr3(1:N)+Qr4(1:N)+Qr5(1:N)+Qr6(1:N)+Qr7(1:N);

%------------------------------------------------------------------------

%Ç”Ç≠éÀÇ…ÇÊÇÈäOïîï˙èoó 
Qe = zeros(N,1);
for i=1:N
Qe(i)=o*ips(i)*Af(i)*10^-6*(y(i))^4;    
end

%------------------------------------------------------------------------

%ñ≥å¿ïΩî¬Ç…ÇÊÇÈÇ”Ç≠éÀ


for i=1:N
    for j=1:N
        if fs(i,j) ~= 0
            dy(i) = -1/C(i)*fs(i,j)*((y(i))^4-(y(j))^4)+dy(i);
            
        end
    end
end


%------------------------------------------------------------------------

%äOïîîMì¸óÕó   
Qs = zeros(N,1);

for i=1:N
    Qs(i) = (ipa(i)*Asb(i)*Fst+ipa(i)*Aab(i)*Fat+ips(i)*Aeb(i)*Fet)/10^6;
end

%------------------------------------------------------------------------

%î˜ï™ï˚íˆéÆÇ…ë„ì¸

for i=1:N
        for j=1:N;
            if R(i,j) ~= 0
                dy(i) = (1/C(i))*((-1/R(i,j))*(y(i)-y(j)))+dy(i); %ì`ì±
            end  
        end
end
   
         
for k=1:N
            dy(k)=1/C(k)*(Qs(k)+Qp(k)-Qe(k)-Qr(k))+dy(k);
end
        
        
            
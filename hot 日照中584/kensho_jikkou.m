clear
ABC = 0;
DEF = 0;
GHI = 0;

kensho_atai
N=144;
z = zeros(N,1);
z(1:N) = 1e-10; 
Tf = zeros(N,1);
Tf(1:N) = 273;


options = odeset('RelTol',1e-10,'AbsTol',z(1:N));
[T,Y] = ode15s(@kensho_function,[0 100000],Tf(1:N),options);

plot(T,Y(:,2),T,Y(:,3),T,Y(:,5),T,Y(:,7),T,Y(:,9),T,Y(:,10),T,Y(:,11),T,Y(:,12),T,Y(:,13),T,Y(:,14))

xlswrite('Œ‹‰Ê.xlsx',T,1,'A2')
xlswrite('Œ‹‰Ê.xlsx',Y,1,'B2')
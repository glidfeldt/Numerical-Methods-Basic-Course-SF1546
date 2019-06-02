function yp=fkula(t,y)

al = pi/6;   % Spetsvinkeln
mu = 0.0;    % Friktionskoefficienten
m  = 1;      % Massan
g  = 9.81;   % Tyngaccelerationen

r   = y(1);
th  = y(2);
rp  = y(3);
thp = y(4);

v = sqrt(rp^2+(r*thp)^2 + (rp/tan(al))^2); % Hastigheten (zp=rp/tan(al))
N = m*r*thp^2*cos(al)+m*g*sin(al);         % Normalkraften

yp=zeros(4,1);
yp(1) = rp;                                % radie
yp(2) = thp;                               % theta
yp(3) = -N*(cos(al)+mu*rp/v)/m + r*thp^2;  % Accelerationen i r
yp(4) = -mu*N*thp/m/v -2*rp*thp/r;         % Accelerationen i theta







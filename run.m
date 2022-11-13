clear
close all
clc

% Compose the signals.
freq1 = 40;   % Frequency, Hz
freq2 = 5.5;  % Frequency, Hz

tSpan = 2;     % Time span, s.
dt    = 0.001; % Time step, s.

% Time.
t = 0:dt:tSpan;

% Radius.
r1 = 0.3;
r2 = 1;

% Frequency in ras/s.
w1 = 2 * pi * freq1;
w2 = 2 * pi * freq2;

% The trajectory.
x = r1 * cos( w1 * t ) + r2 * cos(w2 * t);
y = r1 * sin( w1 * t ) + r2 * sin(w2 * t);

% Default comet.
figure(1);
comet(x, y);
title('Trajectory');
xlabel('x');
ylabel('y');

% new comet.
figure(2);
title('Trajectory');
xlabel('x');
ylabel('y');
newcomet(x, y);

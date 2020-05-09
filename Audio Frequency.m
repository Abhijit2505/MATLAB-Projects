% The C chord recording is stored in a file named Cchord.mat. This file contains two variables:
% y: signal from recording
% fs: sampling frequency

load Cchord.mat
n = numel(y)
t = (0:1:n-1)

% arithmetic operation on t
% plotting y against t
t = t/fs
plot(t,y)

% storing the absolute value of the fourier transformation of y
yfft = abs(fft(y))

f = (0:1:n-1)

f = f * (fs/n)
plot(f,yfft)
xlim([0 1000])

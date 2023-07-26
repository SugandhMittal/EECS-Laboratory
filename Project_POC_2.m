%% Inputs to produce AM wave
Ac=1; %Amplitude of Carrier Signal
Am=input('Enter message signal amplitude');
ka=1;% Amplitude Senstivity
m=Am*ka; %Modulation Index
%Fc>>Fm
Fc=input('Enter frequency of carrier wave (in Hz)');
Fm=input('Enter frequency of message wave (in Hz)');
%% Time specifications:
Fs = 8000;              % samples per second
dt = 1/Fs;              % seconds per sample
StopTime = 0.25;        % seconds
t1 = (0:dt:StopTime-dt)';
%% Equations
y1=Ac*sin(2*pi*Fc*t1); %Carrier Signal
y2=Am*sin(2*pi*Fm*t1); %Message Signal
eq=(1+m.*sin(2*pi*Fm*t1)).*(y1); %Amplitude Modulated Signal
%% Plots
subplot(311)
plot(t1,y1)
xlabel('Time')
ylabel('Amplitude')
title('Carrier signal')
subplot(312)
plot(t1,y2)
xlabel('Time')
ylabel('Amplitude')
title('Message signal')
subplot(313)
plot(t1,eq)
plot(t1,eq,'r')
xlabel('Time')
ylabel('Amplitude')
title('Modulated signal')
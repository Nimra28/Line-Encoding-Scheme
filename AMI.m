clc;
clear all;
close all;
data = [ 0 1 0 0 1 0 ]
t = 0:0.001:1; %time duration of single pulse
digital_signal = []; 
time = []; 
sign = 1;
for i = 1:1:numel(data)
    if(data(i)==1) 
        digital_signal = [digital_signal sign*ones(1,length(t))];
        sign = -sign;
    else
        digital_signal = [digital_signal zeros(1,length(t))];
    end
    time = [time t]; t = t + 1;
end

% Plot the Digital Signal
 
plot(time,digital_signal,'r','LineWidth',3); 
xlabel('Time (bit period)'); 
ylabel('Amplitude'); title('AMI coding'); axis([0 time(end) -1.5 1.5]); 
grid on;

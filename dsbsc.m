function amplitude = dsbsc

fm = input('Enter the value of message signal frequency: ');
fc = input('Enter the value of carrier signal frequency: ');
Am = input('Enter the value of message signal amplitude: ');
Ac = input('Enter the value of carrier signal amplitude: ');

Tm = 1/fm;
Tc = 1/fc;

t1 = 0:Tm/999:6*Tm;

message_signal = Am*sin(2*pi*fm*t1);
subplot(3,1,1)
plot(t1, message_signal, 'r');
grid();
title('Message signal');

carrier_signal = Ac*sin(2*pi*fc*t1);
subplot(3,1,2)
plot(t1, carrier_signal, 'b');
grid();
title('Carrier Signal');

amplitude = message_signal.*carrier_signal;
subplot(3,1,3)
plot(t1,amplitude, 'g');
grid();
title('DSBSC');

end

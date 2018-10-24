[x, fm] = audioread('speech_waveform_LAB4.wav');

A = 1;
fs = 16000;
lev = 32;
n = 0 : fs ;
t = n / fs;
z = linspace(0, fs/fm, 8);
x_sam = [];
seg = (2*A)/lev;
lcode = [];
err = [];
for i = n
    ai = x(i+1);
    for j = 0 : lev-1
        if ( (A - j * (seg)+0.00001 > ai) & (ai >= (A - (j+1)*seg))) 
            x_sam(i+1) = A - (2*j+1)*(seg)/2; 
            lcode(i+1) = lev - j -1;
            
        end 
    end
end
dec2bin(lcode)
figure(2);
plot(x_sam);

sig_power = 0;
err_power = 0;
for i = n
    sig_power = sig_power + power(x(i+1), 2);
    err_power = err_power + power(x(i+1) - x_sam(i+1), 2);
    err(i+1) = x(i+1) - x_sam(i+1);
end
sig_power = sig_power/size(n, 2)
err_power = err_power/size(n, 2)
db = 10 * log2(sig_power/err_power)
sound(x_sam, fs);

    
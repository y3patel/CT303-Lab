A = 1;
fm = 50;
fs = 5000;
n = 0 : fs/fm - 1;
t = n/fs;
m = A*sin(2*pi*fm*t);
bit = 5;

level = 31;
delta = 2*A/(level);
cb = -A : delta : A;
part = -A + delta/2 : delta : A - delta/2;

[index, mq] = quantiz(m, part, cb);


bin = de2bi(index);
stream = reshape(bin', 1, size(bin, 1)*bit);

mrec = reshape(stream, bit, size(bin, 1))';
dec = bi2de(mrec);
m_rec = [];
for i = 1 : size(dec, 1)
    m_rec(i) = cb(dec(i)+1);
end
stem(m_rec)

    
    
    
    
    

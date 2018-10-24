function ans = q14(x)
count = 0;
for i=1:length(x)
    if rem(i,2)==0
        count = count + x(1,i);
    end
end
ans=count;
end
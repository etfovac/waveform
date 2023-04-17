function Reflected = Reflect(x)
Reflected=x;
    for i=1:length(x)
        Reflected(i)=x(end-i+1);
    end

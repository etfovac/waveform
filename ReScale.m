function Xs = ReScale(factor,x)
% re-scale x-axis
Xs = zeros(size(x));
for i=1:length(x)-1/factor
    if (factor>=1)
        if (1<=i*factor)&&(i*factor<=length(x))
           Xs(i) = x(i*factor);
        end
    end
end

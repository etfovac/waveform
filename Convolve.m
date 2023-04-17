function result = Convolve(a,b,type)

N = length(a);
M = length(b);   
L = N+M-1;
convolution_full = zeros(1,L);
for n = 1:N
    for m = 1:M
      convolution_full(n+m-1) = convolution_full(n+m-1) + a(n)*b(m);
      %convolution_full(L+1-(n+m-1)) = convolution_full(L+1-(n+m-1)) + a(n)*b(m);
    end
end
switch type
    case ConvType.Same
        result = convolution_full(ceil(M/2):ceil(M/2)+N-1);
    case ConvType.Right
        result = convolution_full(ceil(L/2-N/2):ceil(L/2+N/2)-1); %=Same
    otherwise
        result = convolution_full;
end
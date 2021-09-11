function Heaviside =h(direction, shift, axisVal)
% The Heaviside step function h 
% (unit step function)
% form: h[+-axisVal+shift]

if direction>=0
    Heaviside=(axisVal>=-shift)&1;
else
    Heaviside=(axisVal<=shift)&1;
end

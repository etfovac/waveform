function Heaviside = UnitStep(axisDirection, axisVal, shift)
% Shifted Unit Step Function
% form: h[+-(axisVal-shift)]
% The Heaviside step function h(t-shift)

switch axisDirection
    case {Sign.None, Sign.Positive}
        Heaviside = axisVal>= -shift;
    case Sign.Negative
        Heaviside = axisVal<= shift;
    otherwise
        warning('Unexpected axisDirection. Unit step signal not created.')
end

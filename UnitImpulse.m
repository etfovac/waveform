function Dirac = UnitImpulse(axisDirection,axisVal,shift)
% The Dirac unit impulse function d 

axisRes = abs(axisVal(2)-axisVal(1)); %=dt;
switch axisDirection
    case {Sign.None, Sign.Positive}
        Dirac = UnitStep(axisDirection,axisVal,shift) -UnitStep(axisDirection,axisVal,shift-axisRes);
    case Sign.Negative
        Dirac = -UnitStep(axisDirection,axisVal,shift-axisRes) +UnitStep(axisDirection,axisVal,shift);
    otherwise
        Dirac = 0*axisVal;
end
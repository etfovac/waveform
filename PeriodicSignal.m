function per_signal = PeriodicSignal(axisVal,x,T)
% compose continuous periodic signal using aperiodic

half = ceil((max(axisVal)+abs(min(axisVal)))/2/T);
per_signal = x;
for i=1:half
    xp = Shift(axisVal,x,i*T);
    per_signal = per_signal + xp;
end
for i=1:half
    xp = Shift(axisVal,x,-i*T);
    per_signal = per_signal + xp;
end

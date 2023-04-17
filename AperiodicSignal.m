function [aper_signal, str_info] = AperiodicSignal(axisType,axisVal,disconts,sections)
% compose continuous aperiodic signal using The Heaviside step function 
% (unit step function)

aper_signal = sections(1,:).*(UnitStep(1,axisVal,-min(axisVal)) -UnitStep(1,axisVal,-disconts(1)));
str_info = compose("  %s<%G , section_1\n",axisType,disconts(1));
for i=1:length(disconts)-1
    aper_signal = aper_signal + sections(i+1,:).*(UnitStep(1,axisVal,-disconts(i)) -UnitStep(1,axisVal,-disconts(i+1)));
    str_info = compose("%s  %G<=%s<%G , %s_%d\n",str_info,disconts(i),axisType,disconts(i+1),"section",i+1);
end
aper_signal = aper_signal + sections(end,:).*(UnitStep(1,axisVal,-disconts(end)));
str_info = compose("%s  %s=>%G , section_%d\n",str_info,axisType,disconts(end),length(disconts)+1);
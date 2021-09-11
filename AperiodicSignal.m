function aper_signal = AperiodicSignal(axisType,axisVal)
% Input continuous aperiodic signal using The Heaviside step function h 
% (unit step function)

disconts=input('Enter the axis values as [g1 g2 g3 ... gk] where the signal changes its shape/waveform: ');
shape_L=input(sprintf('Enter signal shape/waveform sections, use ''axisVal'' for complex sections like ''-sin(pi*axisVal/2)'' :\n  %s<%G , ',axisType,disconts(1)));
aper_signal=shape_L.*(h(1,-min(axisVal),axisVal)-h(1,-disconts(1),axisVal));
for i=1:length(disconts)-1
    shape_tmp=input(sprintf('  %G<=%s<%G , ',disconts(i),axisType,disconts(i+1)));
    xa=shape_tmp.*(h(1,-disconts(i),axisVal)-h(1,-disconts(i+1),axisVal));
    aper_signal=aper_signal+xa;
end
shape_R=input(sprintf('  %s=>%G , ',axisType,disconts(length(disconts))));
xa=shape_R.*(h(1,-disconts(length(disconts)),axisVal));
aper_signal=aper_signal+xa;

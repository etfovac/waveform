function Draw(axisType,axisVal,x)
% adjusted plot
if axisType=='t'
    t=axisVal;
    plot(t,x,'b','linewidth',2)
    xlabel('Time t')
    ylabel('Amplitude')
    axis([min(t),max(t),min(x)-2,max(x)+2])
    set(gca,'xtick',min(t):1:max(t))
    set(gca,'ytick',min(x)-2:1:max(x)+2)
    grid on
elseif axisType=='n'
    n=axisVal;
    stem(n,x,'r','linewidth',2)
    xlabel('Samples n')
    ylabel('Amplitude')
    axis([min(n),max(n),min(x)-2,max(x)+2])
    set(gca,'xtick',min(n):1:max(n))
    set(gca,'ytick',min(x)-2:1:max(x)+2)
    grid on
else
    fprintf('\n Error in Draw')
end
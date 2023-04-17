function Draw(axisType,axisVal,x)
% adjusted plot, axisType is an enum (AxisType.m)
switch axisType
    case AxisType.t
        t=axisVal;
        plot(t,x,'b','linewidth',1)
        xlabel('Time t')
        ylabel('Amplitude')
        axis([min(t),max(t),floor(min(x)-1),ceil(max(x)+1)])
        set(gca,'xtick',min(t):1:max(t))
        set(gca,'ytick',floor(min(x)-1):1:ceil(max(x)+1))
        grid on
    case AxisType.n
        n=axisVal;
        stem(n,x,'r','linewidth',1)
        xlabel('Samples n')
        ylabel('Amplitude')
        axis([min(n),max(n),floor(min(x)-1),ceil(max(x)+1)])
        set(gca,'xtick',min(n):1:max(n))
        set(gca,'ytick',floor(min(x)-1):1:ceil(max(x)+1))
        grid on
    otherwise
        warning('Unexpected axisType in Draw.')
end
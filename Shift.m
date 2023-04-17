function Shifted = Shift(axisVal,x,shift)
Shifted = x;
shift = round((axisVal(2)-axisVal(1))^(-1))*shift;
for i=1:length(x)
   if (1<=i+shift)&&(i+shift<=length(x))
        Shifted(i) = x(i+shift);
   else 
        Shifted(i) = 0;
   end
end
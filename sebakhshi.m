
se_bakhshi(0,20);
function m= se_bakhshi(xl,xr)
f= @(x) (5*pi*x)- x^2;
while xr-xl > 0.0001
  t = linspace(xl,xr,5);
  F=[];
  for i=1:length(t)
     F=[F,f(t(i))];
  end   
  [~,idx]=max(F);
  xl = t(idx-1);
  xr= t(idx+1);
  
end
m=xr;
disp(m)
end





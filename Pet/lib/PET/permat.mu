Pet::permat:=proc(pm_n)
local pm_retmat; local pm_i; local pm_temp;
begin
pm_retmat:=Mat(1,pm_n^2+2*pm_n+1):
pm_retmat[1,1]:=1:
 for pm_i from 2 to (pm_n+1)^2 do 
  pm_temp := Mat(pm_n^2+2*pm_n+1,1):
  if (pm_i mod pm_n+1)=0 and pm_i<(pm_n^2+pm_n) then
   pm_temp[pm_n^2+pm_i/(pm_n+1),1]:=1:
  elif (pm_i<pm_n^2+pm_n) then
   pm_temp[pm_i-floor(pm_i/(pm_n+1)),1]:=1:
  else
   pm_temp[pm_i,1]:=1:
  end_if:
  pm_retmat:=Mat::stackMatrix(pm_retmat
            , linalg::transpose(pm_temp)): 
 end_for:
end_proc:

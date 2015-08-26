Pet::hhc := proc(hhc_k,hhc_by,hhc_f,bita)
local hhc_rv; local hhc_a_aug; local hhc_summand;
local hhc_j; local hhc_ret;
begin
 hhc_rv:=0:
 hhc_a_aug:=linalg::stackMatrix(hhc_by,[ksi]):
 hhc_summand:=0:
 hhc_ret:=0:
 for hhc_j from 0 to hhc_k do 
//  hhc_summand:=1/(hhc_j!)\
//  *(((1-exp(bita*t))/(-bita))^hhc_j)*T(hhc_j)
//  *kroneckerPower(hhc_a_aug, hhc_j+1):
    hhc_summand:=1/(hhc_j!)\
    *(((1-exp(bita*t))/(-bita))^hhc_j)*Squtelmat::SasValue(hhc_j,hhc_a_aug, hhc_f)
    *hhc_a_aug:
//  hhc_summand:=eval(subs(hhc_summand, bita=bita)):
  hhc_ret:=hhc_ret+hhc_summand:
 end_for: 
 return(exp(bita*t)*hhc_ret):
end_proc:
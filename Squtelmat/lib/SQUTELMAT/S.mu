/* ********************************* */
/* Bu prosedur, dordullestirilmis i- */
/* rakgorur dizeyini, sayisal deger  */
/* biciminde uretir.	 	     */
/* ********************************* */

Squtelmat::S := proc(S_i, S_a, S_F)
save k; save j; save S_top;
option remember;
begin
	j := S_i:
	if S_i = 0 then
		return(matrix::identity(nops(S_a))):
	elif S_i > 0 then
		S_top:=0:
		for k from 0 to j-1 do 
			S_top:=S_top+((j-1)!/((j-1-k)!*k!))*Squtelmat::sq(S_F, Squtelmat::S(k, S_a, S_F)*S_a)*Squtelmat::S(j-1-k, S_a, S_F):
		end_for:
		return(S_top):	
	else
		print("oops"):
	end_if: 
end_proc:

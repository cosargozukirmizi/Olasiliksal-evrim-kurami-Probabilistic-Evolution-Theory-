/* ********************************* */
/* Bu prosedur, dordullestirilmis i- */
/* rakgorur dizeyini, sayisal deger  */
/* biciminde uretir.	 	     */
/* ********************************* */

Squtelmat::SasValue := proc(S_i, S_a, S_F)
save Squtelmat; save a; save F;
begin
	F := S_F:
	a := S_a:
	if S_i = 0 then
		return(matrix::identity(nops(a))):
	elif S_i > 0 then
		return(eval(text2expr(Squtelmat::SasString(S_i)))):
	else
		print("oops"):
	end_if: 
end_proc:

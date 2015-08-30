/* ********************************* */
/* Dordullestirimin tanimi. Dordul-  */
/* lestirim, bir dikdortgen dizey ve */
/* bir yoney alir. Yoney ogelerinin  */
/* katsayilari oldugu, dizeyin dor-  */
/* dul obeklerinin ise terimleri ol- */
/* dugu bir dogrusal birlestirim u-  */
/* retir. Bu dogrusal birlestirim i- */
/* le olusan dizeyi deger olarak     */
/* dondurur.      		     */
/* ********************************* */

Squtelmat::sq := proc(sq_F, sq_a)
local n; local sq_res; local sq_i;
begin
 n:=nops(sq_a)-1:
 sq_res:=0:
 sq_i:=1:
 for sq_i from 1 to n+1 do
  sq_res:=sq_res+sq_a[sq_i,1]
  *linalg::submatrix(sq_F,1..n+1,((n+1)*(sq_i-1)+1)..((n+1)*(sq_i-1)+1+n)):
 end_for:
 return(sq_res):
end_proc:


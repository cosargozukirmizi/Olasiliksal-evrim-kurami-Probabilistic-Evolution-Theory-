/* ********************************* */
/* Bu prosedur, dordullestirilmis i- */
/* rakgorur dizeylerin katsayilari-  */
/* nin bulunumu icindir. Eger kat-   */
/* sayilar tmp dizininde bir tuta-   */
/* makta varsa, tutamaktan okunur.   */
/* Eger yoksa, belirlenir ve tutama- */
/* ga da yazilir.		     */
/* ********************************* */

package("BelowDiagonalTraversal"):
Squtelmat::coeffs:=proc(n)
local sirali_yapi;
local i; local orn; local orn_sirali;
local coeffs_ret;  local siralanmamis;
save BelowDiagonalTraversal;
begin
if(fopen("tmp/coeffs".expr2text(n)) = FAIL ) then
	sirali_yapi:=[0$n!]:

/* ********************************* */
/* Butun olasi kosegen alti yuruyus- */
/* lerin, ozel kabarcikli siralayis  */
/* ile artan kosegen alti yuruyusler */
/* durumuna getirilmesi		     */
/* ********************************* */

siralanmamis:=BelowDiagonalTraversal(n):

	for i from 1 to n! do 
		sirali_yapi[i]:= BelowDiagonalTraversal::SpBubbleSortW1(siralanmamis[i]):
	end_for:

/* ********************************* */
/* Yeni olusan dizilimlerin her bi-  */
/* rinden kac adet oldugunun belir-  */
/* lenimi			     */
/* ********************************* */

	orn:=stats::sample(sirali_yapi):
	orn_sirali:=stats::sortSample(stats::tabulate(orn)):

	coeffs_ret:=(matrix(revert(stats::sample2list(stats::col(orn_sirali,n+1))))):
	fprint("tmp/coeffs".expr2text(n), coeffs_ret):
else 
	coeffs_ret:=finput("tmp/coeffs".expr2text(n)):
end_if:
	return(coeffs_ret):
end_proc:

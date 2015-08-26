package("BelowDiagonalTraversal"):
Squtelmat::coeffs:=proc(n)
local h; local bdt; local sirali_yapi;
local i; local orn; local orn_sirali;
local coeffs_ret;
begin
if(fopen("tmp/coeffs".expr2text(n)) = FAIL ) then
	h := BelowDiagonalTraversal::generator(n):
	sirali_yapi:=[0$n!]:
	for i from 1 to n! do 
		bdt:=h():
		sirali_yapi[i]:= BelowDiagonalTraversal::SpBubbleSortW1(bdt):
	end_for:

	orn:=stats::sample(sirali_yapi):
	orn_sirali:=stats::sortSample(stats::tabulate(orn)):

	coeffs_ret:=(matrix(revert(stats::sample2list(stats::col(orn_sirali,n+1))))):
	//write(Text, "tmp/coeffs".expr2text(n),coeffs_ret):
	fprint(Text, "tmp/coeffs".expr2text(n), coeffs_ret):
else 
	coeffs_ret:=fread("tmp/coeffs".expr2text(n)):
end_if:
	return(coeffs_ret):
end_proc:

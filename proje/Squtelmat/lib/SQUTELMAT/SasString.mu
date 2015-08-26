Squtelmat::SasString := proc(n)
local str; local agaclar; local coeffStr;
local i; local coeffs; local agac;
begin
	agaclar:=Squtelmat::treesList(n):
	str:="";
	coeffs:=Squtelmat::coeffs(n):
	coeffStr:="";
	
	for i from 1 to nops(agaclar) do 
		agac:=agaclar[i]:
		if (coeffs[i] > 1) then 
			coeffStr:=int2text(coeffs[i])."*";
		elif (coeffs[i]=1) then
			coeffStr:="";
		else
			print("oops"):
 		end_if:
		str:=str.coeffStr.Squtelmat::tree2nestedCalls(agac):
		if i < nops(agaclar) then
			str:=str."+";
		end_if:
	end_for:

	return(str):
end_proc:

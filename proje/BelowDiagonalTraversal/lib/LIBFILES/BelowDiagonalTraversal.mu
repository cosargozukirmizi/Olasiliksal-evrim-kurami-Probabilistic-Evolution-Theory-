//BelowDiagonalTraversal := newDomain("BelowDiagonalTraversal"):
//BelowDiagonalTraversal::Name := "BelowDiagonalTraversal":
//BelowDiagonalTraversal::info := "Library 'BelowDiagonalTraversal'":
//BelowDiagonalTraversal::interface := {}:

domain BelowDiagonalTraversal 
    inherits Dom::BaseDomain;
    category Cat::CombinatorialClass, Cat::FacadeDomain(DOM_LIST);

    size  := proc(v : dom) : Type::NonNegInt begin nops(v); end_proc;

    first := proc(size : Type::NonNegInt) : dom
             begin
                 combinat::permutations::first(size);
             end_proc;

    Next := proc(lst : dom) : Type::Union(DOM_FAIL, dom)
                local it2; local ret; 
            begin
            it2:=nops(lst):
                ret:=FAIL:
                for it2 from nops(lst) downto 2 do 
                 if (op(lst,it2) <> 1) then
                  ret:=[op(lst, 1..it2-1), op(lst,it2)-1];
                  break;
                 elif (op(lst,it2) = 1 and it2<>1 and op(lst,it2-1) <> 1) then
                  ret:=[op(lst, 1..it2-2), op(lst, it2-1)-1, op(combinat::permutations::first(nops(lst)), it2..nops(lst)-1),nops(lst)];
                  break;
                 elif (lst = [1$nops(lst)]) then 
                  ret:=FAIL;
                 end_if;     
                end_for:
                ret;
                //if (pos := contains(lst, 0)) <> 0 then 
                //    [ 0$(pos-1), 1, op(lst, pos+1..nops(lst))]
                //else FAIL
                //end_if;                  
            end_proc;

	SpBubbleSortW1 := proc(L)  
	local it1; local it2; local n; local tmp;
	local swapped;
	begin
	n:=nops(L):
	repeat
	swapped:=0:
 	for it1 from 1 to n-1 do
  		if (op(L,it1) > op(L,it1+1)) then
   			tmp:=op(L,it1+1):
   			L[it1+1]:=op(L,it1)+1:
   			L[it1]:=tmp:
   			swapped:=1:
  		end_if:
 	end_for:
	until swapped=0 end: 
	return(L):
	end_proc;


end_domain:



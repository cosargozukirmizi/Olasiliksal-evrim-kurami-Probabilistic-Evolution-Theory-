/* ********************************* */
/* Bu sinif, belirli bir oge sayisi  */
/* icin, dizilim i'inci ogesi en     */
/* fazla i olabilecek butun dizi-    */
/* limlerin uretimi icindir. Bir ko- */
/* segenin altinda olabilecek butun  */
/* izgara yuruyuslerini yansittigi   */
/* icin bu ad verilmistir. Ilk dizi- */
/* lim ogeleri 1'den baslayip n'ye   */
/* kadar giden dizilimdir ve son di- */
/* zilim de butun n ogesi de 1 olan  */
/* dizilimdir. 			     */
/* ********************************* */

domain BelowDiagonalTraversal 
    inherits Dom::BaseDomain;
    category Cat::CombinatorialClass, Cat::FacadeDomain(DOM_LIST);


/* ********************************* */
/* Dizilim alip, dizilimin oge sa-   */
/* yisini ureten prosedur	     */
/* ********************************* */

    size  := proc(v : dom) : Type::NonNegInt begin nops(v); end_proc;


/* ********************************* */
/* Ilk dizilimi ureten yapi	     */
/* ********************************* */

    first := proc(size : Type::NonNegInt) : dom
             begin
                 combinat::permutations::first(size);
             end_proc;


/* ********************************* */
/* Verilen bir dizilim icin bir son- */      
/* raki dizilimi ureten yapi	     */
/* ********************************* */

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
            end_proc;


/* ********************************* */
/* Ozel kabarcikli siralayis yapisi. */
/* Bu yapinin kabarcikli siralayis-  */
/* tan farki, ogelerin saga aktari-  */
/* lirken degerlerinin 1 artirilma-  */
/* sidir. Bu olgu, dordullestirilmis */
/* irakgorur dizeylerin cebrinin bir */
/* yansimasidir. Bu prosedurun kul-  */
/* lanimi ile butun yuruyuslerin     */
/* tekduze artan yapiya getirimi     */
/* sozkonusudur. 		     */
/* ********************************* */

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

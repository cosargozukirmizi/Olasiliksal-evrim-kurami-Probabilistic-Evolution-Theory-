/* ********************************* */
/* Bu prosedur, bir agaci betimleyen */
/* dizinler dizinini simge katari o- */
/* larak alir. Ic ice dordullesti-   */
/* rimlerin carpimini betimleyen     */
/* simge katarini dondurur.	     */
/* ********************************* */

Squtelmat::tree2nestedCalls := proc(t2nci)
local pos; local str;
begin
 str:=expr2text(expr(t2nci)):
 str:=stringlib::subs(str, "NIL" = "F"):  
 pos:=strmatch(str, "\\[\\]*$", Index):
 pos:=pos[1]:
 str:=substring(str, 1 .. pos):
 str:="(".str:
 str:=stringlib::subs(str, ", []" = ", a)"):
 str:=stringlib::subs(str, "[]" = ""):
 str:=stringlib::subs(str, "F, " = "Squtelmat::sq(F,"):
 str:=stringlib::subs(str, "[" = ""):
 str:=stringlib::subs(str, "]" = ""):
 str:=stringlib::subs(str, "), " = ") * "):
 str:=substring(str, 1 .. length(str)-3):
 str:=str.")":
 return(str):
end_proc:

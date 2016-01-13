/* ********************************* */
/* Bu prosedur, bir agaci betimleyen */
/* dizinler dizininin simge katari-  */
/* ni alir. Gorsel olarak daha kolay */
/* anlasilabilecek, dordullestirim-  */
/* lerin nasil gundeme geldigini     */
/* gosteren bir simge katari uretir. */
/* ********************************* */

Squtelmat::tree2term := proc(t2ti)
local pos; local str;
begin
 str:=expr2text(expr(t2ti)):
 str:=stringlib::subs(str, "NIL" = "F"):  
 pos:=strmatch(str, "\\[\\]*$", Index):
 pos:=pos[1]:
 str:=substring(str, 1 .. pos):

 str:=stringlib::subs(str, "[]" = "a-|"):
 str:=stringlib::subs(str, "F, " = "|_F, "): 
 str:=stringlib::subs(str, "-|," = "-|"): 
 str:=stringlib::subs(str, "[" = ""): 
 str:=stringlib::subs(str, "]" = ""): 
 str:=stringlib::subs(str, "-|," = "-|"): 
 return(str):
end_proc:

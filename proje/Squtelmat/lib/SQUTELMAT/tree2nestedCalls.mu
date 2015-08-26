Squtelmat::tree2nestedCalls := proc(str)
local pos; 
begin
 str:=expr2text(expr(str)):
 str:=stringlib::subs(str, "NIL" = "F"):  
 pos:=strmatch(str, "\\[\\]*$", Index):
 pos:=pos[1]:
 str:=substring(str, 1 .. pos):
 str:="(".str:
// print(str):
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

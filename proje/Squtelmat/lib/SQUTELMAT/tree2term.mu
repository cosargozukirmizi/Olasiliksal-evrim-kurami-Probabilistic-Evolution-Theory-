Squtelmat::tree2term := proc(str)
local pos; 
begin
 str:=expr2text(expr(str)):
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

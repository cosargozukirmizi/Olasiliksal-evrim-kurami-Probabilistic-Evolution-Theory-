/* ********************************* */
/* Ana prosedur. Bu prosedur, degis- */
/* mezlik eklenimli uzay genisletimi */
/* baglaminda dizeylerin olusturulup */
/* ana donguye cagri yapilmasini i-  */
/* cermektedir.			     */
/* ********************************* */

Pet::sdmode := proc(F_0, F_1, F_2, bas_yoney, kerte=3)
local F_asil; local F_asil_aug; local F_asil_faug;
local n; local G12; local G22; local F_asil2_alt; 
save bita; save ksi; save Mat; save Pet;
local cozum;
begin
F_asil(0):=F_0:
F_asil(1):=F_1:
F_asil(2):=F_2:

/* ********************************* */
/* En bastaki denklem sayisi tanimi  */
/* ********************************* */

n:=Mat::matdim(F_asil(1))[1]:


/* ********************************* */
/* DEUG ile genisletilmis dizey kat- */
/* sayilara gecis		     */
/* ********************************* */

F_asil_aug(1):=Mat::concatMatrix(F_asil(1), 1/ksi*F_asil(0)):
F_asil_aug(1):=Mat::stackMatrix(F_asil_aug(1)
              , Mat(1,n+1)):


/* ********************************* */
/* bita belirleyim  		     */ 
/* ********************************* */

bita := 2/(7*n+8)*linalg::tr(F_asil(1)):

/* ********************************* */
/* bita'nin sifirlanimi celiski ure- */
/* tebilecek bir olgudur. Dolayisiy- */
/* sifirlanima karsi onlem alimi ge- */
/* reklidir.	  		     */ 
/* ********************************* */

if bita = 0 then
 bita := bita + 0.00001:
end_if:

/* ********************************* */
/* Ikinci katsayi dizeyinin bulunumu */
/* ********************************* */

G12(2):=1/(2*ksi)*F_asil(1)-1/(7*n+8)*1/(2*ksi)\
       *linalg::tr(F_asil(1))*Mat::identity(n):
G22(2):=Mat(1,n):
F_asil_faug(2):=Mat::concatMatrix(F_asil(2),G12(2)):
F_asil_faug(2):=Mat::concatMatrix(F_asil_faug(2)
               ,1/ksi*F_asil(1)-bita/ksi*Mat::identity(n)-G12(2)):
F_asil_faug(2):=Mat::concatMatrix(F_asil_faug(2)
               ,1/(ksi^2)*F_asil(0)):
F_asil2_alt:=Mat::concatMatrix(Mat(1,n^2+2*n),[-bita/ksi]):
F_asil_faug(2):=Mat::stackMatrix(F_asil_faug(2),F_asil2_alt):
F_asil_faug(2):=F_asil_faug(2)
              *Pet::permat(n)^(-1):

/* ********************************* */
/* Asil donguye yapilan cagri. Prose-*/
/* durun ilk degistirgeni, kesme ker-*/
/* tesidir.			     */
/* ********************************* */

cozum:=Pet::hhc(kerte, bas_yoney, F_asil_faug(2), bita):

return(cozum):
end_proc:

/* ********************************* */
/* Belirli bir dugum noktasi sayisi  */
/* icin butun olasi ikili agaclari   */
/* uretir. 			     */
/* ********************************* */

Squtelmat::treesList:=proc(n)
begin
 return(revert(map(combinat::dyckWords::list(n),
    combinat::dyckWords::toBinaryTree))):
end_proc:

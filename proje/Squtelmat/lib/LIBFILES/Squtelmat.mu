// ---- file squtelmat/lib/LIBFILES/Squtelmat.mu ----
  // squtelmat -- a library containing my functions
  Squtelmat := newDomain("Squtelmat"):
  Squtelmat::Name := "Squtelmat":
  Squtelmat::info := "Library 'Squtelmat': a library with squtelmat functions":
  Squtelmat::interface := {hold(coeffs), hold(tree2term), hold(treesList), hold(tree2nestedCalls), hold(SasString), hold(SasValue), hold(sq)}:
  // define the functions implemented in ../MYLIB/function1.mu etc:
  autoload(Squtelmat::coeffs):
  autoload(Squtelmat::tree2term):
  autoload(Squtelmat::tree2nestedCalls):
  autoload(Squtelmat::treesList):
  autoload(Squtelmat::SasString):
  autoload(Squtelmat::SasValue):
  autoload(Squtelmat::sq):
//  autoload(mylib::function2):
//  ...
  // define the functions implemented in ../MYLIB/SUBDIR/more1.mu etc:
//  alias(path = pathname("squtelmat", "LIBFILES")):
//  mylib::more1 := loadproc(mylib::more1, path, "more1"):
//  mylib::more2 := loadproc(mylib::more2, path, "more2"):
//  ...
//  unalias(path):
  null():
  // -------- end of file Squtelmat.mu ------------


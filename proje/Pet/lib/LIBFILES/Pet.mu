// ---- file squtelmat/lib/LIBFILES/Pet.mu ----
  // squtelmat -- a library containing my functions
  Pet := newDomain("Pet"):
  Pet::Name := "Pet":
  Pet::info := "Library 'Pet': a library with pet functions":
  Squtelmat::interface := {hold(permat), hold(hhc), hold(sdmode)}:
  // define the functions implemented in ../MYLIB/function1.mu etc:
  autoload(Pet::permat):
  autoload(Pet::hhc):
  autoload(Pet::sdmode):
//  autoload(mylib::function2):
//  ...
  // define the functions implemented in ../MYLIB/SUBDIR/more1.mu etc:
//  alias(path = pathname("squtelmat", "LIBFILES")):
//  mylib::more1 := loadproc(mylib::more1, path, "more1"):
//  mylib::more2 := loadproc(mylib::more2, path, "more2"):
//  ...
//  unalias(path):
  null():
  // -------- end of file Pet.mu ------------


// ---- file Squtelmat/lib/LIBFILES/Squtelmat.mu ----
  // squtelmat -- a library containing my functions
  Squtelmat := newDomain("Squtelmat"):
  Squtelmat::Name := "Squtelmat":
  Squtelmat::info := "Library 'Squtelmat': a library with squtelmat functions":
  Squtelmat::interface := {hold(coeffs), hold(tree2term), hold(treesList), hold(tree2nestedCalls), hold(SasString), hold(SasValue), hold(sq), hold(s)}:
  autoload(Squtelmat::coeffs):
  autoload(Squtelmat::tree2term):
  autoload(Squtelmat::tree2nestedCalls):
  autoload(Squtelmat::treesList):
  autoload(Squtelmat::SasString):
  autoload(Squtelmat::SasValue):
  autoload(Squtelmat::S):
  autoload(Squtelmat::sq):
  null():
  // -------- end of file Squtelmat.mu ------------


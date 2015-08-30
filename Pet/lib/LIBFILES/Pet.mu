// ---- file Pet/lib/LIBFILES/Pet.mu ----
  // Pet -- a library containing my functions
  Pet := newDomain("Pet"):
  Pet::Name := "Pet":
  Pet::info := "Library 'Pet': a library with pet functions":
  Squtelmat::interface := {hold(permat), hold(hhc), hold(sdmode)}:
  autoload(Pet::permat):
  autoload(Pet::hhc):
  autoload(Pet::sdmode):
  null():
  // -------- end of file Pet.mu ------------


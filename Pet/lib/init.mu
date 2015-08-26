  // -------- file mypack/lib/init.mu --------
  // load the library domain 'Pet'
  alias(path = pathname("LIBFILES")):
  Pet := loadproc(Pet, path, "Pet"):
  unalias(path):
  // The return value of the package call:
  null():
  // ---------- end of file init.mu ----------


  // -------- file mypack/lib/init.mu --------
  // load the library domain 'Squtelmat'
  alias(path = pathname("LIBFILES")):
  Squtelmat := loadproc(Squtelmat, path, "Squtelmat"):
  unalias(path):
  // The return value of the package call:
  null():
  // ---------- end of file init.mu ----------


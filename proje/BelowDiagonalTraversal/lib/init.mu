  // -------- file mypack/lib/init.mu --------
  // load the library domain 'BelowDiagonalTraversal'
  alias(path = pathname("LIBFILES")):
  BelowDiagonalTraversal := loadproc(BelowDiagonalTraversal, path, "BelowDiagonalTraversal"):
  unalias(path):
  // The return value of the package call:
  null():
  // ---------- end of file init.mu ----------


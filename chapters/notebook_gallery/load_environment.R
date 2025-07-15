original_libpaths <- .libPaths()
if (!requireNamespace("renv", quietly = TRUE)) install.packages("renv")
suppressMessages({
  renv::load()
  if (!all(renv::status()$synchronized)) renv::restore(prompt = FALSE)
})
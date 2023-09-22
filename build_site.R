lib_path <- "/Users/bila/git/sm11197.github.io/sm11197.github.io/library"
.libPaths(lib_path)
Sys.setenv(RSTUDIO_PANDOC = "/Applications/RStudio.app/Contents/MacOS/quarto/bin/tools")
rmarkdown::render_site()

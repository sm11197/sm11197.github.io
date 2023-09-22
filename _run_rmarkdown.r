Sys.setenv(RSTUDIO_PANDOC = "/Applications/RStudio.app/Contents/MacOS/quarto/bin/tools")
lib_path <- "/Users/bila/git/sm11197.github.io/sm11197.github.io/library"
.libPaths(lib_path)

# Load necessary libraries
library(knitr)

# Knit the R Markdown document with the specified library path
knitr::knit(
    input = "debate-2309.Rmd",
    envir = new.env(parent = globalenv())
)

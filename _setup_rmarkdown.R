## Create a library folder for R packages (not really a specialized environment)
lib_path <- "/Users/bila/git/sm11197.github.io/sm11197.github.io/library"
# replace above with your desired path
dir.create(lib_path)
.libPaths(lib_path)

## Function to check and install for R packages
check_install <- function(package_name, lib) {
    if (is.null(tryCatch(find.package(package_name, lib.loc = lib_path), error = function(e) NULL))) {
        chooseCRANmirror(ind = 1) # Set the CRAN mirror, you can change to a mirror closer to your country
        install.packages(package_name, lib = lib)
    } else {
        message(paste0(package_name, " is already installed."))
    }
}

## Install packages to run *.Rmd files
# Install RMarkdown and knitr
check_install("rmarkdown", lib = lib_path)
check_install("knitr", lib = lib_path)
# Install TinyTex for PDF output (you can use other LaTeX distributions)
# check_install("tinytex")
# tinytex::install_tinytex()

## Extract package names from setup chunk in Rmd file
# Read the Rmd file
rmd_file <- "/Users/bila/git/sm11197.github.io/sm11197.github.io/debate-2309.Rmd"
# change as needed, the above is my path to the debate analysis Rmd file
rmd_content <- readLines(rmd_file)
# Extract the setup chunk
setup_chunk_start <- which(grepl("^```\\{r setup,", rmd_content))
setup_chunk_end <- which(grepl("^```$", rmd_content[seq(setup_chunk_start, length(rmd_content))]))[1] + setup_chunk_start - 1
setup_chunk <- rmd_content[seq(setup_chunk_start + 1, setup_chunk_end - 1)]
# Extract library calls from the setup chunk
library_calls <- grep("^library\\(", setup_chunk, value = TRUE)
# Extract package names from the library calls
package_names <- gsub("library\\(([^)]+)\\)", "\\1", library_calls)
package_names <- unlist(strsplit(package_names, split = " "))


## Check and install packages
for (pkg in package_names) {
    check_install(pkg, lib = lib_path)
}

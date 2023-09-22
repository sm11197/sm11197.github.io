# sm11197.github.io

This repository hosts a simple website that currently includes files for our 2023 debate paper. Below are instructions on how to set up the required environment and run the R Markdown file in macOS.

## Requirements

Before setting up and running the R Markdown file, ensure you have the following installed:

1. R
2. Python
3. Python packages listed in `requirements.txt` (We recommend using a [virtual environment](https://docs.python.org/3/tutorial/venv.html) for managing Python packages)
)
4. Pandoc
5. (also recommended) RStudio

## Setting Up for the R Markdown File

1. Go to _setup_rmarkdown.R and edit the paths for (a) library at lib_path (b) and *.Rmd file at rmd_file (note: the debate paper's analysis is debate-2309.Rmd)
2. Run the following command (or run in RStudio)
```
Rscript _setup_rmarkdown.R
```

## Running the R Markdown File

1. Go to R Markdown file (debate-2309.Rmd) and edit the paths for (a) venv at "use_virtualenv()" (b) library
2. Go to _run_rmarkdown.R and edit the paths for (a) Pandoc at RSTUDIO_PANDOC (b) library (c) *.Rmd file (the debate paper's analysis is debate-2309.Rmd). Run the following command 
```
Rscript _run_rmarkdown.R
```
OR
Directly run in RStudio, no need for _run_rmarkdown.R

The result will be name_of_rmd.html (or whatever name/output extension you chose)

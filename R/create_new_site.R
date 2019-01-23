# This function showcases how one might write a function to be used as an
# RStudio project template. This function will be called when the user invokes
# the New Project wizard using the project template defined in the template file
# at:
#
#   inst/rstudio/templates/project/aerobatic_site.dcf
#
# The function itself just echos its inputs and outputs to a file called INDEX,
# which is then opened by RStudio when the new project is opened.
aerobatic_site <- function(path, site_template) {

  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # Download the GitHub repo corresponding to the selected site template

  # write to index file
  writeLines(site_template, con = file.path(path, "index.Rmd"))
}

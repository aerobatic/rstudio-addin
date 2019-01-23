# This function showcases how one might write a function to be used as an
# RStudio project template. This function will be called when the user invokes
# the New Project wizard using the project template defined in the template file
# at:
#
#   inst/rstudio/templates/project/aerobatic_site.dcf
#
# The function itself just echos its inputs and outputs to a file called INDEX,
# which is then opened by RStudio when the new project is opened.
create_new_site <- function(path, site_template) {

  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # Download the GitHub repo corresponding to the selected site template

  print(paste(site_template,1))

  # Simple Site, Slide Presentation, CV plus Blog
  if(site_template == "Professional Blog CV") {
    repo_name <- "rmarkdown-professional-blog-cv"
  } else if(site_template == "Slide Presentation") {
    repo_name <- "rmarkdown-slide-presentation"
  } else {
    repo_name <- "rmarkdown-basic-site"
  }

  repo_url <- paste("https://github.com/aerobatic/", repo_id);

  print(repo_url)

  shell_command <- paste("aero-desktop create --repo", repo, "--directory", getwd())

  print(shell_command)

  # Shell out to aerobatic-desktop passing in the repo URL to clone and install
  system(shell_command, intern = FALSE,
       ignore.stdout = FALSE, ignore.stderr = FALSE,
       wait = TRUE, input = NULL, timeout = 0)
}

create_new_site("~/src/aerobatic/rstudio-test-site", "Basic Site")

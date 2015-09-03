
use_Rprofile = function() {

  Rprofile_path = file.path(normalizePath(getwd()), ".Rprofile")
  template = render_template(".Rprofile")

  if (!file.exists(Rprofile_path)) {
    message("Creating .Rprofile")
    writeLines(template, Rprofile_path)
  } else {
    rule("Rprofile exists, Please check that it starts with:")
    message(template)
    rule()
  }

  invisible(TRUE)

}


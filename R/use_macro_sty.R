use_Rprofile = function() {

  macro_sty_path = file.path(normalizePath(getwd()), "macro.sty")
  template = render_template("macro.sty")

  if (!file.exists(macro_sty_path)) {
    message("Creating macro.sty")
    writeLines(template, macro_sty_path)
  } else {
    rule("macro.sty exists, Please check that it starts with:")
    message(template)
    rule()
  }

  invisible(TRUE)

}

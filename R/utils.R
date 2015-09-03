
# copied from https://github.com/hadley/devtools/blob/master/R/utils.r

render_template <- function(name, data = list()) {
  path <- system.file("templates", name, package = "pfiles")
  template <- readLines(path)
  whisker::whisker.render(template, data)
}

rule <- function(..., pad = "-") {
  if (nargs() == 0) {
    title <- ""
  } else {
    title <- paste0(...)
  }
  width <- getOption("width") - nchar(title) - 1
  message(title, " ", paste(rep(pad, width, collapse = "")))
}

update = function() {
  if (!dir.exists("tempt-master")) {
    unlink("tempt-master")
  }

  downloader::download(url = "https://github.com/jjchern/tempt/archive/master.zip",
          destfile = "temp.zip",
          quiet = TRUE)

  unzip("temp.zip")
  unlink("temp.zip")

  if(dir.exists("inst")) {
    unlink("inst", recursive = TRUE)
    dir.create("inst")
  }

  file.rename(from = "tempt-master", to = "inst/templates")
}

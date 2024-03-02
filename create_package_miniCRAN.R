create_package_miniCRAN <- function(package_name,
                                    which_dir = getwd(),
                                    mirror = "https://cloud.r-project.org",
                                    suggests = FALSE) {
  
  library(miniCRAN)
  
  package_ver <- packageVersion(package_name)
  
  package_set <- pkgDep(package_name,
                        repos = mirror,
                        suggests = suggests)
  
  dir.create(path <- file.path(which_dir, paste(package_name,
                                                package_ver,
                                                "miniCRAN",
                                                sep = "_")))
  
  makeRepo(package_set,
           path = path,
           repos = mirror)
  
}

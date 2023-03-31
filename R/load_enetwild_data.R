#' Load data for a specific species and year
#'
#' This function loads the data for a specific species and year from the 
#' "inst/extdata" folder in the package directory. The function combines the species
#' name and year to create the file name, and then loads the corresponding CSV
#' file into R using the "read.csv()" function.
#'
#' @param species A character string indicating the name of the species to load.
#' @param year An integer indicating the year of the data to load.
#' @return A data.frame containing the data for the specified species and year.
#' @export
#' @examples
#' data <- load_enetwild_data("Sus.scrofa", 2015)
load_enetwild_data <- function(species, year) {

  file_name <- paste0(species, ".", year, ".csv")

  data_path <- system.file("extdata", paste0(species, "/", file_name), package = "wildnetR")

  if (!file.exists(data_path)) {
    stop("The specified data file does not exist. Check the data availability by using list_enetwild_data().")
  }

  data <- read.csv(data_path)

  return(data)
}

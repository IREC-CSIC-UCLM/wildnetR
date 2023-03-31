#' List available species and years for ENETWILD data
#'
#' This function lists the available species and years for which data is
#' available in the "inst/extdata" folder of the package. The function loops through
#' the species folders in the "inst/extdata" directory, and identifies the years for
#' which data is available by looking at the CSV files in each species folder.
#' The function then displays the list of species and years in the console
#' and returns a list of the available species and years.
#'
#' @return A list containing the available species and years as character vectors.
#' @export
#' @examples
#' list <- list_enetwild_data()
list_enetwild_data <- function() {
  species_list <- list.dirs(system.file("extdata", package = "wildnetR"), full.names = FALSE)

  year_list <- c()

  for (species in species_list) {
    files <- list.files(system.file("extdata", species, package = "wildnetR"))

    csv_files <- files[grep(".csv$", files)]

    years <- gsub(paste0(species, "\\."), "", csv_files)
    years <- gsub(".csv", "", years)

    year_list <- c(year_list, years)
    cat(species, ": ", paste(years, collapse = ", "), "\n")
  }

  return(list(species = species_list, year = unique(year_list)))
}
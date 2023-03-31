# wildnetR

wildnetR is an R package that provides functions for downloading and processing data from the ENETWILD database. The package includes functions to download data for specific species and years, and to clean and process the data for analysis. This is an alpha version for testing purposes, the idea its to upload the package with new functionalities once the data its securely store on an online service like Azure/Zenodo/etc.

## Installation

You can install wildnetR from GitHub using the devtools package:

```r
devtools::install_github("your_username/wildnetR")
```

## Usage

First, load the package:

```r
library(wildnetR)
```

To get a list of the species and years available in the WildNet database, use the list_species_years() function:

```r
list_species_years()
```

To load the data for a specific species and year, use the load_species_data() function:

```r
data <- load_species_data(species = "Sus.scrofa", year = 2015)
```

The data will be returned as a data.frame object with WKT column


## Issues

Please if you find issues report them on: https://github.com/IREC-CSIC-UCLM/wildnetR/issues

## Contributions

Contributions to wildnetR are welcome! If you find a bug, have a suggestion, or would like to contribute code, please open an issue or pull request on the GitHub repository.

## License

This package is licensed under the MIT License. See the LICENSE file for details.
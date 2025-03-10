mpatools
================

Tools for working with [Marine Protected
Areas](https://www.iucn.org/theme/protected-areas/our-work/quality-and-effectiveness/world-database-protected-areas-wdpa)
to compute species diversity metrics using [OBIS](https://obis.org/)
data.

# Requirements

-   [R v4+](https://www.r-project.org/)

-   [rlang](https://CRAN.R-project.org/package=rlang)

-   [dplyr](https://CRAN.R-project.org/package=dplyr)

-   [readr](https://CRAN.R-project.org/package=readr)

-   [rappsdir](https://CRAN.R-project.org/package=rappsdir)

-   [wdpar](https://CRAN.R-project.org/package=wdpar)

-   [sf](https://CRAN.R-project.org/package=sf)

-   [vegan](https://CRAN.R-project.org/package=vegan)

-   [robis](https://cran.r-project.org/web/packages/robis/index.html)

# Installation

    remotes::install_github("BigelowLab/mpatools")

# Usage

## Polygons for MPAs

We use the [wdpar](https://CRAN.R-project.org/package=wdpar) R package
to fetch MPAs by country (or ‘global’ for the complete dataset.) By
default, we store the files you download in the path returned by
`rappdirs::user_data_dir("wdpar")` in
[GeoPackage](https://www.geopackage.org/). Once you have downloaded
format you can simply read the file from disk using
`wdpa_read_country()`.

``` r
library(rappdirs)
library(sf)
library(mpatools)
x <- wdpa_fetch_country(country = 'Cuba')
plot(sf::st_geometry(x))
```

![](README_files/figure-gfm/fetch_country-1.png)<!-- -->

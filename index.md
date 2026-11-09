# ROvis.shiny

## Rijksoverheid Visualisatie - shiny

## Description

A tool to support the visualisation of graphs of echarts4r, plotly,
ggplot2, highcharter, leaflet, etc. by providing standardized
Rijksoverheid (Dutch National Government) styling. This package is part
of the \[ROvis umbrella package\]
(<https://github.com/rivm-syso/ROvis>).

## Installation

Install the latest release from
[R-universe](https://rivm-syso.r-universe.dev):

``` r

install.packages(
  "ROvis.shiny",
  repos = c("https://rivm-syso.r-universe.dev", "https://cloud.r-project.org")
)
```

Install the development version from GitHub:

``` r

# install.packages("pak")
pak::pak("rivm-syso/ROvis.shiny")
```

A version number ending in `.9000` is a development version.

## Usage

A short example of on how to use the ro_shiny_graph_panel_ui() and
ro_shiny_graph_panel_server functions in combination with your
plotly-object. For the full functionality, please see the vignettes.

``` r

# Make a function for the plotly plot
plotly_function <- function(example_data) {
  plotly::plot_ly(
    data = example_data,
    x = ~`Aantal cases`,
    y = ~`Leeftijdsgroep`,
    color = ~Geslacht,
    type = "bar",
    orientation = "h"
  )
}

# Make the ui and server of the app
ui <- shiny::fluidPage(
  useShinyjs(),
  ro_shiny_graph_panel_ui("mod1", plotly::plotlyOutput)
)

server <- function(input, output, session) {
  ro_shiny_graph_panel_server(
    id = "mod1",
    plot_render_fun = plotly::renderPlotly,
    plot_data_fun = function() plotly_function(example_data),
    data = example_data,
    caption = "Aantal gevallen per leeftijdsgroep en geslacht"
  )
}

shiny::shinyApp(ui = ui, server = server)
```

## Support

First point of contact for questions: <spin@rivm.nl> (<spin@rivm.nl>)

## Contributing

We welcome contributions! Before you start, **please read
[CONTRIBUTING.md](https://rivm-syso.github.io/ROvis.shiny/CONTRIBUTING.md)**.
It explains how to open an issue, our git etiquette (branches, commits,
pull requests and reviews) and our code standards. See
[CONTRIBUTORS.md](https://rivm-syso.github.io/ROvis.shiny/CONTRIBUTORS.md)
for the list of contributors.

## Instructions for developers

Below we describe the most important guidelines and practicalities for R
package development on this project.

### Requirements

We use the `testthat`, `lintr` and `roxygen2` package for development of
tests, code style checks and automatic documentation. We also use the
`devtools` and `usethis` package during development to adhere to
standards for R packages and make developing easier! Install them in
your Rstudio environment:

``` r

install.packages(testthat)
install.packages(lintr)
install.packages(roxygen2)
install.packages(quarto)
install.packages(pkgdown)
install.packages(devtools)
install.packages(usethis)
```

### Guidelines

Type
[`devtools::load_all()`](https://devtools.r-lib.org/reference/load_all.html)
in your console each time you start developing. This loads all
dependencies and non-exported functions in the NAMESPACE. This makes
developing a lot easier!

To ensure code standardization and quality, follow these guidelines: -
Add tests with
[`usethis::use_test()`](https://usethis.r-lib.org/reference/use_r.html) -
Add a new package dependency to the DESCRIPTION file with
[`usethis::use_package()`](https://usethis.r-lib.org/reference/use_package.html).
We use the `min_version` argument to specify a minimum version. - Add a
new function dependency to the NAMESPACE with
[`usethis::use_import_from()`](https://usethis.r-lib.org/reference/use_import_from.html) -
Add documentation to new functions by inserting a roxygen skeleton and
use
[`devtools::document()`](https://devtools.r-lib.org/reference/document.html)
to create automatic documentation in the `man` folder

## Authors and acknowledgment

This R packages was created by ROvis team (<spin@rivm.nl>).

## License

The code can be re-used under license [EUPL
v.1.2](https://eupl.eu/1.2/en/). See
[LICENCE](https://rivm-syso.github.io/ROvis.shiny/LICENCE) for details.

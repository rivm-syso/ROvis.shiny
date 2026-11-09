# Generic yGraph Module UI

Returns a UI output element for a generic chart module, using a
user-supplied chart UI function.

## Usage

``` r
ro_shiny_graph_mod_ui(id, plot_ui_fun)
```

## Arguments

- id:

  Character. Module namespace ID.

- plot_ui_fun:

  Function. A function that generates a UI element for the chart output
  (`plotlyOutput`,
  [`highcharter::highchartOutput`](https://jkunst.com/highcharter/reference/highchartOutput.html),
  [`echarts4r::echarts4rOutput`](https://echarts4r.john-coene.com/reference/echarts4r-shiny.html),
  etc.).

## Value

A Shiny UI output element for use in a module UI.

## See also

[`ro_shiny_graph_panel_ui`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md),
[`ro_shiny_graph_mod_server`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_mod_server.md)

Other ggplotly:
[`ro_shiny_graph_mod_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_mod_server.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md)

Other plotly:
[`ro_shiny_graph_mod_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_mod_server.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md)

Other echarts4r:
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md)

## Examples

``` r
# Using plotly
if (interactive()) {
  ro_shiny_graph_mod_ui("my_chart", plotlyOutput)
}

# Using highcharter
if (interactive()) {
  ro_shiny_graph_mod_ui("my_chart", highcharter::highchartOutput)
}

# Using echarts4r
if (interactive()) {
  ro_shiny_graph_mod_ui("my_chart", echarts4r::echarts4rOutput)
}
```

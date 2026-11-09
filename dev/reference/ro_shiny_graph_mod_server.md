# Generic Graph Module Server

Server logic for a generic chart module. Renders a chart using a
user-supplied render function and a plot-producing function.

## Usage

``` r
ro_shiny_graph_mod_server(id, render_fun, plot_data_fun)
```

## Arguments

- id:

  Character. Module namespace ID.

- render_fun:

  Function. A Shiny render function (`renderPlotly`,
  [`highcharter::renderHighchart`](https://jkunst.com/highcharter/reference/renderHighchart.html),
  [`echarts4r::renderEcharts4r`](https://echarts4r.john-coene.com/reference/echarts4r-shiny.html),
  etc.).

- plot_data_fun:

  Function. A function returning the data or object to plot.

## Value

None. Sets up the server logic for the generic chart module.

## See also

[`ro_shiny_graph_panel_server`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_mod_ui`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_mod_ui.md)

Other ggplotly:
[`ro_shiny_graph_mod_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_mod_ui.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_ui.md)

Other plotly:
[`ro_shiny_graph_mod_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_mod_ui.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_ui.md)

Other echarts:
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md)

## Examples

``` r
# Using plotly
if (interactive()) {
  ro_shiny_graph_mod_server(
    id = "my_chart",
    render_fun = plotly::renderPlotly,
    plot_data_fun = function() plotly_obj
  )
}
# Using highcharter
if (interactive()) {
  ro_shiny_graph_mod_server(
    id = "my_chart",
    render_fun = highcharter::renderHighchart,
    plot_data_fun = function() highcharter::highchart() |>
      highcharter::hc_add_series(data = c(1,2,3))
  )
}

# Using echarts4r
if (interactive()) {
  ro_shiny_graph_mod_server(
    id = "my_chart",
    render_fun = echarts4r::renderEcharts4r,
    plot_data_fun = function() echarts4r::e_charts(1:3) |> echarts4r::e_line(1:3)
  )
}
```

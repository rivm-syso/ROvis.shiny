# Graph Panel Module Server

Server logic for the graph panel module. Handles rendering of the chart,
toggling and displaying the table, and downloading data.

## Usage

``` r
ro_shiny_graph_panel_server(
  id,
  plot_render_fun,
  plot_data_fun,
  data,
  caption,
  sorting = FALSE,
  pagelength = 10
)
```

## Arguments

- id:

  Character. Module namespace ID.

- plot_render_fun:

  Function. A Shiny render function
  ([`plotly::renderPlotly`](https://rdrr.io/pkg/plotly/man/plotly-shiny.html),
  [`highcharter::renderHighchart`](https://jkunst.com/highcharter/reference/renderHighchart.html),
  etc.).

- plot_data_fun:

  Function. A function returning the data or plot object for the chart.

- data:

  Data frame or tibble. The data to be shown in the table and available
  for download.

- caption:

  Character. Caption/title for the data table.

- sorting:

  Logical. Should the table allow column sorting? Default is `FALSE`.
  When used, apply the same in ro_shiny_graph_panel_ui.

- pagelength:

  Integer. Number of rows per page in the data table. Default is `10`.

## Value

None. Sets up the server logic for the graph panel module.

## See also

[`ro_shiny_graph_panel_ui`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md),
[`ro_shiny_graph_mod_server`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_mod_server.md),
[`ro_show_table_server`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_show_table_server.md),
[`ro_shiny_download_server`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_download_server.md),
[`ro_icon_download`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_download.md),
[`ro_shiny_dt_ui`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_ui.md),
[`ro_shiny_dt_server`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_server.md)

Other ggplotly:
[`ro_shiny_graph_mod_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_mod_server.md),
[`ro_shiny_graph_mod_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_mod_ui.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md)

Other plotly:
[`ro_shiny_graph_mod_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_mod_server.md),
[`ro_shiny_graph_mod_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_mod_ui.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md)

Other echarts:
[`ro_shiny_graph_mod_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_mod_server.md)

Other DT:
[`ro_create_custom_button()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_create_custom_button.md),
[`ro_icon_download()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_download.md),
[`ro_icon_table()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_table.md),
[`ro_shiny_download_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_download_server.md),
[`ro_shiny_download_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_download_ui.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_dt_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_server.md),
[`ro_shiny_dt_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_ui.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_screenreader.md),
[`ro_show_table_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_show_table_server.md),
[`ro_show_table_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_show_table_ui.md)

## Examples

``` r
# In your Shiny server:
if (interactive()) {
  ro_shiny_graph_panel_server(
  id = "main",
  plot_render_fun = plotly::renderPlotly,
  plot_data_fun = function() plotly_obj,
  data = my_data,
  caption = "Aantal gevallen per groep",
  sorting = TRUE,
  pagelength = 20
  )
}
```

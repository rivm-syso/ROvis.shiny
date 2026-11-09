# Graph Panel Module UI

Generates a Shiny UI module including a chart, skip-link for
accessibility, a table toggle button, download button, and a data table
area.

## Usage

``` r
ro_shiny_graph_panel_ui(id, plot_ui_fun, sorting = FALSE)
```

## Arguments

- id:

  Character. Module namespace ID.

- plot_ui_fun:

  Function. UI function to create the chart output (for example
  `plotlyOutput`).

- sorting:

  Logical. Should the table allow column sorting? Default is `FALSE`.
  When used, apply the same in ro_shiny_graph_panel_server.

## Value

A Shiny UI element (tagList) for use in a module UI.

## See also

[`ro_shiny_graph_panel_server`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_skip_link`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link.md),
[`ro_shiny_skip_link_style`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link_style.md),
[`ro_shiny_focus_style`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_focus_style.md),
[`ro_shiny_button_theme`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_button_theme.md),
[`ro_shiny_dt_responsive`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_screenreader`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_screenreader.md),
[`ro_icon_download`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_download.md),
[`ro_shiny_graph_mod_ui`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_mod_ui.md),
[`ro_show_table_ui`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_ui.md),
[`ro_shiny_download_ui`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_ui.md)

Other ggplotly:
[`ro_shiny_graph_mod_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_mod_server.md),
[`ro_shiny_graph_mod_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_mod_ui.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md)

Other plotly:
[`ro_shiny_graph_mod_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_mod_server.md),
[`ro_shiny_graph_mod_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_mod_ui.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md)

Other echarts4r:
[`ro_shiny_graph_mod_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_mod_ui.md)

Other DT:
[`ro_create_custom_button()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_create_custom_button.md),
[`ro_icon_download()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_download.md),
[`ro_icon_table()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_table.md),
[`ro_shiny_download_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_server.md),
[`ro_shiny_download_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_ui.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_dt_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_server.md),
[`ro_shiny_dt_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_ui.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_screenreader.md),
[`ro_show_table_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_server.md),
[`ro_show_table_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_ui.md)

## Examples

``` r
if (interactive()) {
  ro_shiny_graph_panel_ui("main", plotlyOutput)
}
```

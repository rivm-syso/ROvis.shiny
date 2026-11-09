# DT Table Module UI

Creates a Shiny UI element for displaying a DT (DataTable) table output
within a module.

## Usage

``` r
ro_shiny_dt_ui(id)
```

## Arguments

- id:

  Character. The module namespace ID.

## Value

A Shiny UI output element for rendering a DT table.

## See also

[`ro_shiny_dt_server`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_server.md),
[`ro_shiny_graph_panel_server`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md)

Other DT:
[`ro_create_custom_button()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_create_custom_button.md),
[`ro_icon_download()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_download.md),
[`ro_icon_table()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_table.md),
[`ro_shiny_download_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_server.md),
[`ro_shiny_download_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_ui.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_dt_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_server.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_ui.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_screenreader.md),
[`ro_show_table_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_server.md),
[`ro_show_table_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_ui.md)

## Examples

``` r
if (interactive()) {
ro_shiny_dt_ui("table1")
}
```

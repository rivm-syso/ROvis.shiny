# Download Button Module UI

Creates a Shiny UI element for a download button with a custom SVG icon
and label.

## Usage

``` r
ro_shiny_download_ui(id, label_text = "Export", svg_path)
```

## Arguments

- id:

  Character. The module namespace ID.

- label_text:

  Character. The label to display on the button. Default is "Export".

- svg_path:

  Character. SVG path data for the icon.

## Value

A Shiny UI element (action button) for use in a module UI.

## See also

[`ro_shiny_download_server`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_download_server.md),
[`ro_shiny_graph_panel_ui`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md)

Other DT:
[`ro_create_custom_button()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_create_custom_button.md),
[`ro_icon_download()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_download.md),
[`ro_icon_table()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_table.md),
[`ro_shiny_download_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_download_server.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_dt_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_server.md),
[`ro_shiny_dt_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_ui.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_screenreader.md),
[`ro_show_table_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_show_table_server.md),
[`ro_show_table_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_show_table_ui.md)

## Examples

``` r
if (interactive()) {
ro_shiny_download_ui(
  id = "download1",
  label_text = "Export",
  svg_path = ro_icon_download()
)
}
```

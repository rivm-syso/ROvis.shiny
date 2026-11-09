# Create a Custom Button for Shiny UI

Generates a Shiny action button with an SVG icon and custom label text.

## Usage

``` r
ro_create_custom_button(input_id, label_text, svg_path)
```

## Arguments

- input_id:

  Character. The input ID for the action button.

- label_text:

  Character. The label to display next to the icon.

- svg_path:

  Character. SVG path data for the icon.

## Value

A Shiny tag list representing the action button UI element.

## See also

[`ro_icon_download`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_download.md),
[`ro_icon_table`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_table.md)

Other DT:
[`ro_icon_download()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_download.md),
[`ro_icon_table()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_table.md),
[`ro_shiny_download_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_download_server.md),
[`ro_shiny_download_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_download_ui.md),
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
if (FALSE) { # \dontrun{
ro_create_custom_button(
  input_id = "download_btn",
  label_text = "Download",
  svg_path = ro_icon_download()
)
} # }
```

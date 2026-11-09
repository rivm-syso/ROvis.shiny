# Download Button Module Server

Server logic for a download button that exports data as a CSV file using
a custom filename.

## Usage

``` r
ro_shiny_download_server(
  id,
  data_to_download,
  filename_prefix = "data",
  svg_path
)
```

## Arguments

- id:

  Character. The module namespace ID.

- data_to_download:

  Function. A function returning the data to be downloaded (as a data
  frame or tibble).

- filename_prefix:

  Character. Prefix for the downloaded file name. Default is "data".

- svg_path:

  Character. SVG path data for the icon (not used in server, but
  included for consistency).

## Value

None. Sets up the server logic for the download button module.

## See also

[`ro_shiny_download_ui`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_ui.md),
[`ro_shiny_graph_panel_server`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md)

Other DT:
[`ro_create_custom_button()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_create_custom_button.md),
[`ro_icon_download()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_download.md),
[`ro_icon_table()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_table.md),
[`ro_shiny_download_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_ui.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_dt_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_server.md),
[`ro_shiny_dt_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_ui.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_ui.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_screenreader.md),
[`ro_show_table_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_server.md),
[`ro_show_table_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_ui.md)

## Examples

``` r
# In server function:
if (interactive()) {
ro_shiny_download_server(
  id = "download1",
  data_to_download = function() mydata,
  filename_prefix = "cases",
  svg_path = ro_icon_download()
)
}
```

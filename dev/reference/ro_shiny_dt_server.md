# DT Table Module Server

Server logic for rendering an accessible, keyboard-navigable (with
customJS) DT table with options for sorting and page length.

## Usage

``` r
ro_shiny_dt_server(id, data, caption, sorting = FALSE, pagelength = 10)
```

## Arguments

- id:

  Character. The module namespace ID.

- data:

  Data frame or tibble. The data to display in the table.

- caption:

  Character. Table caption/title (displayed above the table).

- sorting:

  Logical. Should column sorting be enabled? Default is `FALSE`.

- pagelength:

  Integer. Number of rows to display per page. Default is `10`.

## Value

None. Sets up the server logic for the DT table module.

## See also

[`ro_shiny_dt_ui`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_ui.md),
[`ro_shiny_graph_panel_server`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md)

Other DT:
[`ro_create_custom_button()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_create_custom_button.md),
[`ro_icon_download()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_download.md),
[`ro_icon_table()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_table.md),
[`ro_shiny_download_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_server.md),
[`ro_shiny_download_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_ui.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_dt_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_ui.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_ui.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_screenreader.md),
[`ro_show_table_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_server.md),
[`ro_show_table_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_ui.md)

## Examples

``` r
# In your Shiny server:
if (interactive()) {
ro_shiny_dt_server(
  id = "table1",
  data = my_data,
  caption = "Aantal gevallen per groep",
  sorting = TRUE,
  pagelength = 20
)
}
```

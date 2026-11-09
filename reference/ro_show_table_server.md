# Table Toggle Button Module Server

Server logic for toggling the table visibility button and updating its
label/icon.

## Usage

``` r
ro_show_table_server(
  id,
  svg_path,
  label_show = "Toon tabel",
  label_hide = "Verberg tabel"
)
```

## Arguments

- id:

  Character. The module namespace ID.

- svg_path:

  Character. SVG path data for the icon.

- label_show:

  Character. Label shown when table is hidden. Default is "Toon tabel".

- label_hide:

  Character. Label shown when table is visible. Default is "Verberg
  tabel".

## Value

A list with a reactiveVal `show_table`, indicating whether the table is
shown.

## See also

[`ro_show_table_ui`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_show_table_ui.md),
[`ro_shiny_graph_panel_server`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_server.md)

Other DT:
[`ro_create_custom_button()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_create_custom_button.md),
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
[`ro_show_table_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_show_table_ui.md)

## Examples

``` r
if (interactive()) {
  ro_show_table_server(
    id = "toggle1",
    svg_path = ro_icon_table()
  )
}
```

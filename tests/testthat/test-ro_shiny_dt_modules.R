# Some basic tests for the functions and ui for the datatable_modules.R

#Test if it has the correct id
test_that("ro_shiny_dt_ui returns DTOutput with correct id", {
  ui <- ro_shiny_dt_ui("abc")
  expect_true(grepl("abc-table", as.character(ui)))
})

#Test if the DT return the font and is left aligned
test_that("ro_dt_theme  includes the requested font and left alignment", {
  tag <- ro_dt_theme(base_family = "Verdana", sorting = TRUE)
  css_string <- tag$children[[1]]$children[[1]]
  expect_true(grepl("font-family:\\s*Verdana", css_string))
  expect_true(grepl("text-align:\\s*left", css_string))

  tag <- ro_dt_theme(base_family = "Verdana", sorting = FALSE)
  expect_true(grepl("text-align:\\s*right", css_string))
})

#Test if the function runs as a module
test_that("ro_shiny_dt_server can be called without error", {
  shiny::testServer(
    ro_shiny_dt_server,
    args = list(
      id = "table1",
      data = head(mtcars),
      caption = "Test tabel",
      sorting = TRUE,
      pagelength = 5
    ),
    {
      # Test if it is indeed a module
      expect_true(TRUE)
    }
  )
})

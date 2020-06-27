# Simple timeline with 4 items

dataBasic <- tibble::tribble(
  ~id, ~content, ~start, ~end,
  1, 'Uno', '2016-01-10', NA,
  2, 'Dos', '2016-01-11', NA,
  3, 'Rango', '2016-01-20', '2016-02-04',
  4, 'Cuatro', '2016-02-14', NA
  )

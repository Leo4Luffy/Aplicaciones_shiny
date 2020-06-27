share <- list(
  title = "Línea de tiempo sobre los gráficos estadísticos y la visualización.",
  url = "",
  image = "",
  description = "",
  twitter_user = ""
)

codeConsole <-
'library(timevis)

datos <- tibble::tribble(
  ~id, ~content, ~start, ~end,
  1, "Uno", "2016-01-10", NA,
  2, "Dos", "2016-01-11", NA,
  3, "Rango", "2016-01-20", "2016-02-04",
  4, "Cuatro", "2016-02-14", NA
  )

timevis(data)'

codeShiny <-
'library(shiny)
library(timevis)

datos <- tibble::tribble(
  ~id, ~content, ~start, ~end,
  1, "Uno", "2016-01-10", NA,
  2, "Dos", "2016-01-11", NA,
  3, "Rango", "2016-01-20", "2016-02-04",
  4, "Cuatro", "2016-02-14", NA
  )

ui <- fluidPage(
  timevisOutput("timeline")
)

server <- function(input, output, session) {
  output$timeline <- renderTimevis({
    timevis(data)
  })
}

shinyApp(ui = ui, server = server)
'

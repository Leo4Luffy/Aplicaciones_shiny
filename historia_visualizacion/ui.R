library(timevis)

#source("ui-helpers.R")

fluidPage(
  shinydisconnect::disconnectMessage2(),
  title = "Línea de tiempo sobre visualización y gráficos estadisticos",
  tags$head(
    tags$link(href = "style.css", rel = "stylesheet"),

    # Facebook OpenGraph tags
    #tags$meta(property = "og:title", content = share$title),
    #tags$meta(property = "og:type", content = "website"),
    #tags$meta(property = "og:url", content = share$url),
    #tags$meta(property = "og:image", content = share$image),
    #tags$meta(property = "og:description", content = share$description),

    # Twitter summary cards
    #tags$meta(name = "twitter:card", content = "summary"),
    #tags$meta(name = "twitter:site", content = paste0("@", share$twitter_user)),
    #tags$meta(name = "twitter:creator", content = paste0("@", share$twitter_user)),
    #tags$meta(name = "twitter:title", content = share$title),
    #tags$meta(name = "twitter:description", content = share$description),
    #tags$meta(name = "twitter:image", content = share$image)
  ),
  tags$a(
    href="",
    tags$img(style="position: absolute; top: 0; right: 0.0; border: 0;",
             src="imagen_curso_2.png",
             alt="")
  ),
  div(id = "header",
    div(id = "title",
      ""
    ),
    div(id = "subtitle",
        "Cronología sobre la visualización y gráficos estadisticos"),
    div(id = "subsubtitle",
        "Jorge Leonardo López Martínez y Duvan Ariel Nieves Ruiz",
        tags$a(href = "", ""),
        HTML("&bull;"),
        "Disponible en",
        tags$a(href = "https://github.com/Leo4Luffy/Aplicaciones_shiny/tree/master/historia_visualizacion", "GitHub"),
        HTML("&bull;"),
        tags$a(href = "", ""), ""
    )
  ),
  tabsetPanel(
    #id = "mainnav",
    #tabPanel(
      #div(icon("cog"), "Código usado"),
      #timevisOutput("timelineBasic"),
      #div(
        #id = "samplecode",
        #fluidRow(
          #column(
            #6,
            #div(class = "codeformat",
              #"Resultados con el paquete timevis en la consola de R"),
            #tags$pre(codeConsole)
          #),
          #column(
            #6,
            #div(class = "codeformat",
                #"Resultado con el paquete timevis usando shiny"),
            #tags$pre(codeShiny)
          #)
        #)
      #)
    #),

    tabPanel(
      div(icon("calendar"), "Línea de tiempo"),
      timevisOutput("timelineCustom")
    ),

    tabPanel(
      div(icon("attachment"), "Descripción"),
      div(id = "usage-tab", includeMarkdown("www/Descripcion.md"))
    )
  ),
  div(class = "sourcecode",
      "El código usado para crear esta aplicación la puedes encontrar en",
      tags$a(href = "https://github.com/Leo4Luffy/Aplicaciones_shiny/tree/master/historia_visualizacion",
             "GitHub")
  )
)

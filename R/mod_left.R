# Module UI

#' @title   mod_left_ui and mod_left_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_left
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList 
#' @import magrittr
mod_left_ui <- function(id){
  ns <- NS(id)
  tagList(
    tags$div(
      class = "rounded",
      h2("Build your own hex sticker"),
      tags$details(
        tags$summary("Manage Package name"),
        tags$div(
          class = "innerrounded rounded",
          fluidRow(
            col_12(
              textInput(
                ns("package"), 
                "Package name", 
                value = "hexmake"
              )
            ), 
            col_6(
              numericInput(
                ns("p_x"),
                "x position for package name", 
                value = 1, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("p_y"), 
                "y position for package name", 
                value = 1.4, 
                step = 0.1
              )
            ), 
            col_6(
              tags$label(
                `for` = "p_color", 
                "Font color for package name"
              ),
              tags$br(),
              tags$input(
                tags$br(),
                type = "color", 
                id = ns("p_color"), 
                value = "#FFFFFF", 
                name = "p_color"
                
              ) %>%
                tagAppendAttributes(
                  onInput = sprintf(
                    "Shiny.setInputValue('%s', event.target.value)", 
                    ns("p_color")
                  )
                )
            ),
            col_6(
              selectInput(
                ns("p_family"), 
                "Font family for package name", 
                selected = sysfonts::font_families()[1], 
                choices = sysfonts::font_families()
              )
            ),
            col_6(
              numericInput(
                ns("p_size"), 
                "Font size for package name", 
                value = 8, 
                step = 0.1
              )
            )
          )
        )
      ),
      tags$details(
        tags$summary("Manage image"),
        tags$div(
          class = "innerrounded rounded",
          fluidRow(
            col_6(
              fileInput(ns("file"), "Upload a file")
            ), 
            col_6(
              HTML("&nbsp;")
            )
          ), 
          fluidRow(
            col_6(
              numericInput(
                ns("s_x"), 
                "x position for image", 
                value = 1, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("s_y"), 
                "y position for image", 
                value = 0.7, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("s_width"), 
                "Width for image", 
                value = 0.4, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("s_height"), 
                "Height for image", 
                value = 1, 
                step = 0.1
              )
            ), 
            col_6(
              numericInput(
                ns("asp"), 
                "Aspect ratio", 
                value = 1, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("dpi"), 
                "Resolution", 
                value = 600, 
                step = 1
              )
            )
          )
        )
      ),
      tags$details(
        tags$summary("Manage Hexagon"),
        tags$div(
          class = "innerrounded rounded",
          fluidRow(
            col_6(
              numericInput(
                ns("h_size"), 
                "Size for hexagon border", 
                value = 1.2, 
                step = 0.1
              )
            ),
            col_6(
              tags$label(
                `for` = "p_color", 
                "Color to fill hexagon"
              ),
              tags$br(),
              tags$input(
                tags$br(),
                type = "color", 
                id = ns("h_fill"), 
                value = "#1881C2", 
                name = "p_color"
                
              ) %>%
                tagAppendAttributes(
                  onInput = sprintf(
                    "Shiny.setInputValue('%s', event.target.value)", 
                    ns("h_fill")
                  )
                )
            ),
            col_6(
              tags$label(
                `for` = "h_color", 
                "Color for hexagon border"
              ),
              tags$br(),
              tags$input(
                tags$br(),
                type = "color", 
                id = ns("h_color"), 
                value = "#87B13F", 
                name = "p_color"
                
              ) %>%
                tagAppendAttributes(
                  onInput = sprintf(
                    "Shiny.setInputValue('%s', event.target.value)", 
                    ns("h_color")
                  )
                )
            )
          )
        )
      ),
      tags$details(
        tags$summary("Manage Spotlight"),
        tags$div(
          class = "innerrounded rounded",
          fluidRow(
            col_6(
              checkboxInput(
                ns("spotlight"), 
                "Add spotlight", 
                value = FALSE
              )
            ),
            col_6(
              numericInput(
                ns("l_x"), 
                "x position for spotlight", 
                value = 1, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("l_y"), 
                "y position for spotlight", 
                value = 0.5, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("l_width"), 
                "width for spotlight", 
                value = 3, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("l_height"), 
                "height for spotlight", 
                value = 3, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("l_alpha"), 
                "maximum alpha for spotlight", 
                value = 0.4, 
                step = 0.1
              )
            )
          )
        )
      ),
      tags$details(
        tags$summary("Manage URL"),
        tags$div(
          class = "innerrounded rounded",
          fluidRow(
            col_6(
              textInput(
                ns("url"), 
                "url at lower border", 
                value = ""
              )
            ),
            col_6(
              numericInput(
                ns("u_x"), 
                "x position for url", 
                value = 1, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("u_y"), 
                "y position for url", 
                value = 0.08, 
                step = 0.1
              )
            ), 
            col_6(
              tags$label(
                `for` = "u_color", 
                "Color for url"
              ),
              tags$br(),
              tags$input(
                tags$br(),
                type = "color", 
                id = ns("u_color"), 
                value = "#000000", 
                name = "u_color"
                
              ) %>%
                tagAppendAttributes(
                  onInput = sprintf(
                    "Shiny.setInputValue('%s', event.target.value)", 
                    ns("u_color")
                  )
                )
            ),
            col_6(
              selectInput(
                ns("u_family"), 
                "Font family for url",
                selected = sysfonts::font_families()[1], 
                choices = sysfonts::font_families()
              )
            ),
            col_6(
              numericInput(
                ns("u_size"), 
                "Text size for url", 
                value = 1.5, 
                step = 0.1
              )
            ),
            col_6(
              numericInput(
                ns("u_angle"), 
                "Angle for url", 
                value = 30, 
                step = 1
              )
            )
          )
        )
      ), 
      tags$details(
        tags$summary("Rendering mode"), 
        tags$div(
          class = "innerrounded rounded",
          align = "center",
          fluidRow(
            tags$div(
              align = "center",
              col_4(
                checkboxInput(
                  ns("live"), 
                  "Live preview", 
                  value = TRUE
                )
              )
            ),
            tags$div(
              align = "right",
              col_4(
                actionButton(
                  ns("render"), 
                  "Manual render", 
                  icon = icon("arrow-right"), 
                  `disabled` = "disable"
                )
              )
            )
          )
        )
      ), 
      tags$details(
        tags$summary("Download the hex"),
        tags$div(
          class = "innerrounded rounded",
          align = "center",
          fluidRow(
            col_12(
              downloadButton(
                ns("dl"), 
                "Download the Hex"
              )
            ) 
          )
        )
      ), 
      tags$details(
        tags$summary("About"), 
        tags$div(
          class = "innerrounded rounded",
          align = "center",
          mod_about_ui(ns("about_ui_1"))
        )
      )
    )
  )
}

# Module Server

#' @rdname mod_left
#' @export
#' @keywords internal

mod_left_server <- function(input, output, session, img){
  ns <- session$ns
  
  lapply(
    c(
      "package", 
      "p_x", 
      "p_y", 
      "p_color", 
      "p_family",
      "p_size", 
      "s_x", 
      "s_y", 
      "s_width", 
      "s_height", 
      "h_size", 
      "h_fill", 
      "h_color", 
      "spotlight", 
      "l_x", 
      "l_y", 
      "l_width", 
      "l_height", 
      "l_alpha", 
      "url", 
      "u_x", 
      "u_y", 
      "u_color", 
      "u_family",
      "u_size", 
      "u_angle", 
      "asp", 
      "dpi"
    ), function(x){
      observeEvent( input[[x]] , {
        img[[x]] <- input[[x]]
        if (input$live) trigger("render")
      })
    }
  )
  
  observeEvent( input$file , {
    
    image <- magick::image_read(input$file$datapath)
    size <- ifelse(
      magick::image_info(image)$width > magick::image_info(image)$height, 
      magick::image_info(image)$width, 
      magick::image_info(image)$height
    )
    
    image <- magick::image_extent(image, sprintf("%sx%s", size, size))
    x <- tempfile(fileext = "png")
    magick::image_write(image, x)
    img$subplot <- x
    if (input$live) trigger("render")
  })
  
  observeEvent( input$render , {
    trigger("render")
  })
  
  output$dl <- downloadHandler(
    filename = function() {
      paste('hex-', img$package, '.png', sep='')
    },
    content = function(con) {
      img$render(con)
    }
  )
  
  observeEvent( input$live , {
    if (input$live){
      golem::invoke_js("disable", sprintf("#%s", ns("render")))
    } else {
      golem::invoke_js("reable", sprintf("#%s", ns("render")))
    }
  })
  
  
  callModule(mod_about_server, "about_ui_1")
  
  
}


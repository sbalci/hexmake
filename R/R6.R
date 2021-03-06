#' @import hexSticker
#' @import R6
#' @import ggplot2
Hex <- R6::R6Class(
  "Hex", 
  public = list(
    subplot = NULL, 
    s_x = 0.8, 
    s_y = 0.75, 
    s_width = 0.3,
    s_height = 0.5, 
    package = "hexmake", 
    p_x = 1, 
    p_y = 1.4, 
    p_color = "#FFFFFF",
    p_family = "Aller_Rg", 
    p_size = 8, 
    h_size = 1.2,
    h_fill = "#1881C2", 
    h_color = "#87B13F", 
    spotlight = FALSE,
    l_x = 1, 
    l_y = 0.5, 
    l_width = 3, 
    l_height = 3, 
    l_alpha = 0.4,
    url = "",
    u_x = 1, 
    u_y = 0.08, 
    u_color = "black",
    u_family = "Aller_Rg", 
    u_size = 1.5, 
    u_angle = 30,
    white_around_sticker = FALSE,
    filename = paste0("package", ".png"), 
    asp = 1, 
    dpi = 300,
    saved_path = NULL,
    initialize = function(){
      self$subplot <- system.file("sign-of-the-horns.png", package = "hexmake")
    }, 
    render = function(path){
      self$saved_path <- path
      sticker(
        subplot = self$subplot, 
        s_x = self$s_x,
        s_y = self$s_y,
        s_width = self$s_width,
        s_height = self$s_height,
        package = self$package, 
        p_x = self$p_x,
        p_y = self$p_y,
        p_color = self$p_color,
        p_family = self$p_family,
        p_size = self$p_size,
        h_size = self$h_size,
        h_fill = self$h_fill,
        h_color = self$h_color,
        spotligh = self$spotlight,
        l_x = self$l_x,
        l_y = self$l_y,
        l_width = self$l_width,
        l_height = self$l_height,
        l_alpha = self$l_alpha,
        url = self$url,
        u_x = self$u_x,
        u_y = self$u_y,
        u_color = self$u_color,
        u_family = self$u_family,
        u_size = self$u_size,
        u_angle = self$u_angle,
        white_around_sticker = self$white_around_sticker,
        filename = path, 
        asp = self$asp, 
        dpi = self$dpi
      )
    }
  )
)

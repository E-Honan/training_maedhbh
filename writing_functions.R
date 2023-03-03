airtemps <- c(212, 30.3, 78, 32) # airtemps in F

celsius1 <- (airtemps[1]-32)*5/9
celsius2 <- (airtemps[2]-32)*5/9
celsius3 <- (airtemps[3]-32)*5/9

# wrapping the operation into a function 
# going to use the `function` function

# function parameters are the inputs the function needs to operate
fahr_to_celsius <- function(fahr){
  celsius <- (fahr - 32)*5/9
  return(celsius)
}
  
celcius11 <- fahr_to_celsius(airtemps[1])

celcius4 <- fahr_to_celsius(airtemps[1])

# check it returns as true

celcius11 == celcius4

# celsius*9/5 + 32

# adding Roxygen skeleton-

#' Convert Celsius temperatures to Fahrenheit
#' 
#' Could add a longer description if I wished
#'
#' @param celsius The temperature in Celsius
#'
#' @return The temperature in Fahrenheit
#' @export 
#'
#' @examples
#'
#' Would need to include an example vector
#'
#'
celsius_to_fahr <- function(celsius){
  fahr <- (celsius*9/5) + 32
  return(fahr)
}


airtemps_c <- fahr_to_celsius(airtemps)
airtemps_f <- celsius_to_fahr(airtemps_c)

airtemps == airtemps_f

# new function

convert_temps <- function(fahr){
  celsius <- (fahr - 32)*5/9
  kelvin <- celsius + 273.15
  temps <- data.frame(fahr = fahr, 
                      celsius = celsius, 
                      kelvin = kelvin)
  
  return(temps)
  
}

airtemps <- c(212, 100, 78)

temps_all <- convert_temps(airtemps)


custom_theme <- function(base_size = 9) {
  ggplot2::theme(
    axis.ticks       = ggplot2::element_blank(),
    text             = ggplot2::element_text(family = 'Helvetica', color = 'gray30', size = base_size),
    plot.title       = ggplot2::element_text(size = ggplot2::rel(1.25), hjust = 0.5, face = 'bold'),
    panel.background = ggplot2::element_blank(),
    legend.position  = 'right',
    panel.border     = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major = ggplot2::element_line(colour = 'grey90', size = .25),
    legend.key       = ggplot2::element_rect(colour = NA, fill = NA),
    axis.line        = ggplot2::element_blank()
  )
}


library(ggplot2)

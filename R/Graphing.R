#Input: I will be inputting the min_age of the ants
#Output: A histogram that shows the the min_age when most ants were alive
#'@description
#'Makes a histogram base on min_ma
#'@param Ants Is the the dataset
#'@param min_ma Is the variable column being graphed
#'@useage
#'load .csv file as tidyverse (ggplot)

AntHistory <- function(Ants, min_ma){
  if (!is.data.frame(Ants)){
    return("Error in data formation")
 }
  Histo <- ggplot(Ants, mapping = aes(x = min_ma)) +
    geom_histogram()
  return(Histo)
}



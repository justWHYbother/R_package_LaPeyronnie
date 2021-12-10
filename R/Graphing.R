#Input: I will be inputting the min_age of the ants
#Output: A histogram that shows the min_age when most ants were alive
#'@description
#'Makes a histogram base on min_ma
#'@param Ants Is the the dataset
#'@param min_ma Is the variable column being graphed
#'@return A histogram showing the how many ants lived at each minimum age they
#' could've been alive
#'@export

AntHistory <- function(Ants, min_ma){
  if (!is.data.frame(Ants)){
    return("Error in data formation")
 }
  Histo <- ggplot(Ants, mapping = aes(x = min_ma)) +
    geom_histogram()
  return(Histo)
}



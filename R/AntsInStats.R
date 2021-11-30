#Input: a code that looks the genus column and spit out the number of ants in each genus
#Output: the number of ants per-genus
#'@description
#'Show number of ants for each genus
#'@param X Is the data set Ants.csv
#'@param y Is the genus of the Ants
#'@return GenusCount The count of ants for each genus
#'@usage
#'AntsIn (Ants)

AntsIn<- function(x, y){
  if (!is.data.frame(Ants)){
    return("Error in data formation")
  }
  GenusCount<- x%>%
    select({{y}})%>%
    count({{y}})
  return(GenusCount)
}

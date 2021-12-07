#Input: a code that looks the genus column and spit out the number of ants in each genus
#Output: the number of ants per-genus
#'@description
#'Show number of ants for each genus
#'@param Ants Is the data set Ants.csv
#'@param ColumnGenus Is the genus of the Ants
#'@return GenusCount The count of ants for each genus
#'@usage
#'AntsIn (Ants)
#'@export
AntsIn<- function(Ants, ColumnGenus){
  if (!is.data.frame(Ants)){
    return("Error in data formation")
  }
  GenusCount<- Ants%>%
    select({{ColumnGenus}})%>%
    count({{ColumnGenus}})
  return(GenusCount)
}

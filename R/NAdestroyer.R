#Input: This code will delete all NA values in my data set and convert any non-normal NA values to an NA (not observed, not found, unavalible, ect...) to an NA value to be omitted.
#Output: a data set free of missing values
#'@description
#' Gets ride of all non-recorded data (NA,not observed, None, ect..)
#' @param SixLegs Is Ants the data set being used but must be typed as: 
#' /cloud/project/Data/Ants.csv
#' @return non-NADataFrame Is a dataframe with no NAs 


ByeByeNA<-function(SixLegs){
  nonNADataFrame<-read_csv(SixLegs, na = c("None", "NA"))
  nonNADataFrame <- na.omit(nonNADataFrame)
  return(nonNADataFrame)
}
if (!is.na(nonNADataFrame)){
  return("Error in data formation")
}
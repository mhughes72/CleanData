run_analysis <- function() {
  #directories <- c("UCI/test/Inertial/", "UCI/train/Inertial/")
  directories <- c("UCI/test/Inertial/")
  for (d in directories) {
    file_list <- list.files(d)
    for (file in file_list) {
      if (!exists("dataset")) {
        dataset <-
          read.csv(paste0(d, file), sep=" ")
        colnames(dataset) <- file
      } else {
        tempData <-
          read.csv(paste0(d, file), sep=" ")
        colnames(tempData) <- file
        dataset <- rbind.fill(dataset, tempData)
        rm(tempData)
      }
    }
  }


  return (dataset)

}
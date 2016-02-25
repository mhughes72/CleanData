run_analysis <- function() {
  #directories <- c("UCI/test/Inertial/", "UCI/train/Inertial/")
  directories <- c("UCI/test/")
  for (d in directories) {
    file_list <- list.files(d, recursive=TRUE)
    for (file in file_list) {
      if (!exists("dataset")) {
        dataset <-
          read.csv(paste0(d, file))
        colnames(dataset) <- file
      } else {
       tempData <-
         read.csv(paste0(d, file))
        colnames(tempData) <- file
        dataset <- cbind(dataset, tempData)
        rm(tempData)
      }
    }
  }
colnames(dataset) <- (c("test.bodyaccX", "test.bodyaccY", "test.bodyaccZ", "test.bodygyroX", "test.bodygyroY", "test.bodygyroZ", "test.totalaccX", "test.totalaccY", "test.totalaccZ", "test.subject", "test.X", "test.Y"))


  return (dataset)

}
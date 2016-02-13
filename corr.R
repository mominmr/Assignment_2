source("complete.r")

corr <- function(directory, threshold=0)
{
        
        dataf <-  complete(directory)
        identifier <- dataf[dataf["nobs"] > threshold,]$id
        
       ## declare numeric class
        conum <- numeric()
#        #Form File name
        filelist <- as.character(list.files(directory))
        
        comfilepath <- paste(directory,filelist, sep = "/")
       
        for (c in identifier)
               {

                     xc <- read.csv(comfilepath[c], header = TRUE)
           
                       xcompletevector <- xc[complete.cases(xc),]
                       conum <- c(conum, cor(xcompletevector$sulfate, xcompletevector$nitrate))
                        conum
                       
                }
        
     return(conum)
}







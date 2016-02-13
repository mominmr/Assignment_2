complete <- function(directory, id=1:332)
{
        
        
        resultvector <- c()
        indexvector <- c()
        
        filelist <- as.character(list.files(directory))
        
        comfilepath <- paste(directory,filelist, sep = "/")
        
        for (i in id)
        {   
                cf  <- read.csv(comfilepath[i], header = TRUE, sep = ",")  
                comv <- sum(complete.cases(cf))
                resultvector <- c(resultvector, comv)
                iv <- i
                indexvector <- c(indexvector, iv)
               # print(resultvector)
               # print(indexvector)
                
                
                
        }
        df <- data.frame(indexvector, resultvector)
        names(df) <- c("id" ,"nobs")
        print(df)
        
        
}
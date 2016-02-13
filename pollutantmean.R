pollutantmean <- function(directory ,pollutant,id=1:332)
{       
        #Form File name
        filelist <- sprintf("%03d.csv",id)
        # Get file path combinging directory and the file
        filedir <- file.path(directory,filelist)
        
        # use lapply over the seq to read every thing in to one datastructure
        largedataframe <- lapply(filedir, read.csv, header = TRUE, sep = ",")
        
        df <-  do.call(rbind, largedataframe)
        
        x <- df[!is.na(df[,pollutant]), pollutant]
        
        meanvales <- mean(x, na.rm = TRUE)
        
        print(meanvales)
        
        
}


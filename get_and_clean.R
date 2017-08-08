get_and_clean <- function()
{
    if(!file.exists('household_power_consumption.txt'))
    {
        stop("Please ensure that the unzipped file 'household_power_consumption.txt' is present in the
              working directory and try again.")
    }
    library(lubridate)
    hhpowercon <- read.csv2.sql('household_power_consumption.txt',
                                sql = "select * from file where Date == '1/2/2007' OR Date == '2/2/2007'",
                                header = TRUE, 
                                stringsAsFactors = FALSE, 
                                na.strings = "?", 
                                colClasses = c(rep("character", 2), rep("numeric", 7)))
    hhpowercon <- cbind(dmy_hms(paste(hhpowercon$Date, hhpowercon$Time)), hhpowercon[, 3:9])
    colnames(hhpowercon)[1] <- "DateTime"
    hhpowercon
}


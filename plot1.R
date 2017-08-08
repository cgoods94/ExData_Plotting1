plot1 <- function( hhpowercon )
{
    if(!file.exists('./plots'))
    {
        dir.create('./plots')
    }
    png('plots/plot1.png')
    
    hist(hhpowercon$Global_active_power, 
         col = "red",
         xlab = "Global Active Power (kilowatts)",
         main = "Global Active Power")
    
    dev.off()
}
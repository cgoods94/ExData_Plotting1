plot2 <- function ( hhpowercon )
{
    if(!file.exists('./plots'))
    {
        dir.create('./plots')
    }
    png('plots/plot2.png')
    
    with(hhpowercon, plot(DateTime, Global_active_power, 
                          type = "n",
                          xlab = "",
                          ylab = "Global Active Power (kilowatts)"))
    with(hhpowercon, lines(DateTime, Global_active_power))
    
    dev.off()
}
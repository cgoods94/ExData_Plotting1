plot3 <- function ( hhpowercon )
{
    if(!file.exists('./plots'))
    {
        dir.create('./plots')
    }
    png('plots/plot3.png')
    
    with(hhpowercon, plot(DateTime, Sub_metering_1, 
                          type = "n",
                          xlab = "",
                          ylab = "Energy sub metering"))
    with(hhpowercon, lines(DateTime, Sub_metering_1))
    with(hhpowercon, lines(DateTime, Sub_metering_2, col = "red"))
    with(hhpowercon, lines(DateTime, Sub_metering_3, col = "blue"))
    legend("topright", 
           col = c("black", "blue", "red"), 
           lwd = 2,
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    dev.off()
}
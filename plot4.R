plot4 <- function ( hhpowercon )
{
    if(!file.exists('./plots'))
    {
        dir.create('./plots')
    }
    png('plots/plot4.png')
    
    par(mfrow = c(2, 2))
    
    # Graph (1, 1)
    with(hhpowercon, plot(DateTime, Global_active_power, 
                          type = "n",
                          xlab = "",
                          ylab = "Global Active Power"))
    with(hhpowercon, lines(DateTime, Global_active_power))
    
    # Graph (1, 2)
    with(hhpowercon, plot(DateTime, Voltage,
                          type = "n",
                          xlab = "datetime",
                          ylab = "Voltage"))
    with(hhpowercon, lines(DateTime, Voltage))
    
    # Graph (2, 1)
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
    
    # Graph (2, 2)
    with(hhpowercon, plot(DateTime, Global_reactive_power,
                          type = "n",
                          xlab = "datetime",
                          ylab = "Global_reactive_power"))
    with(hhpowercon, lines(DateTime, Global_reactive_power))
    
    
    dev.off()
}
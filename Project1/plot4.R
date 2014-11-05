par( mfcol = c( 2, 2 ) )

# Top Left plot
plot( as.numeric( data$Global_active_power ),
      type = "l",
      ylab = "Global Active Power",
      axes = F,
      xlim = c(1,2881),
      xlab = NA )
axis( 2 )
axis( 1,
      at = c(1, 1441, 2881 ),
      labels = c( "Thu", "Fri", "Sat" ) )
box()

# Bottom Left plot
plot( as.numeric( data$Sub_metering_1 ),
      type = "l",
      ylab = "Energy sub metering",
      axes = F,
      xlim = c(1,2881),
      xlab = NA )
axis( 2 )
axis( 1,
      at = c(1, 1441, 2881 ),
      labels = c( "Thu", "Fri", "Sat" ) )
lines( as.numeric( data$Sub_metering_2 ),
       col = "red" )
lines( data$Sub_metering_3,
       col = "blue" )
legend( "topright",
        bty = "n",
        lty = c( 1, 1, 1 ),
        legend = names( data )[7:9],
        col = c( "black",
                 "red",
                 "blue" ) )
box()

# Top Right plot
plot( as.numeric( data$Voltage ),
      type = "l",
      ylab = "Voltage",
      axes = F,
      xlim = c(1,2881),
      xlab = "datetime" )
axis( 2 )
axis( 1,
      at = c(1, 1441, 2881 ),
      labels = c( "Thu", "Fri", "Sat" ) )
box()

# Bottom Right plot
plot( as.numeric( data$Global_reactive_power ),
      type = "l",
      ylab = "Global_reactive_power",
      axes = F,
      xlim = c(1,2881),
      xlab = "datetime" )
axis( 2 )
axis( 1,
      at = c(1, 1441, 2881 ),
      labels = c( "Thu", "Fri", "Sat" ) )
box()
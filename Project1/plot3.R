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
legend( "topright", lty = c( 1, 1, 1 ),
        legend = names( data )[7:9],
        col = c( "black",
                 "red",
                 "blue" ) )
box()
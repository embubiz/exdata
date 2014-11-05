plot( as.numeric( data$Global_active_power ),
      type = "l",
      ylab = "Global Active Power (kilowatts)",
      axes = F,
      xlim = c(1,2881),
      xlab = NA )
axis( 2 )
axis( 1,
      at = c(1, 1441, 2881 ),
      labels = c( "Thu", "Fri", "Sat" ) )
box()
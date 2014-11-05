# Setting working directory
wd  <- "D:/OneDrive/Coursera/4 - Exploratory Data Analysis/Week1/Quiz/"
setwd( wd )

# Installing package "data.table" (if needed)
if ( !( "data.table" %in% rownames( installed.packages() ) ) ) {
    install.packages( "data.table" )
}
library( "data.table" )

# Installing package "lubridate" (if needed)
if ( !( "lubridate" %in% rownames( installed.packages() ) ) ) {
    install.packages( "lubridate" )
}
library( "lubridate" )

# Installing package "plyr" (if needed)
if ( !( "plyr" %in% rownames( installed.packages() ) ) ) {
    install.packages( "plyr" )
}
library( "plyr" )

# Downloading data
url.name    <- paste0( "https://d396qusza40orc.cloudfront.net/",
                       "exdata%2Fdata%2Fhousehold_power_consumption.zip" )
dest.name   <- "exdata-data-household_power_consumption.zip"
download.file( url = url.name,
               destfile = dest.name )

# Extracting file
unzip( zipfile = dest.name )

# Importing and preparing data
data    <- fread( "household_power_consumption.txt",
                  header = T,
                  sep = ";",
                  na.strings = "?" )
data    <- data[as.character( data$Date ) %in% c( "1/2/2007", "2/2/2007" ), ]
data$Date   <- as.POSIXct(strptime( paste( as.character( data$Date ),
                                           data$Time, sep = " " ),
                                    format = "%d/%m/%Y %H:%M:%S" ) )
data$Time    <- wday( data$Date, label = T, abbr = T )
data    <- rename( data, replace = c( "Time" = "wDay", "Date" = "DateTime" ) )

# Creating plots
for ( i in 1:4 ) {
    png( filename = paste0( "plot",
                            as.character( i ),
                            ".png" ),
         width = 480,
         height = 480,
         units = "px" )
    source( paste0( "plot",
                    as.character( i ),
                    ".R" ) )
    dev.off()
}
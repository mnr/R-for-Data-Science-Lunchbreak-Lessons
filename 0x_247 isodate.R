# ISOdate and ISOdatetime

# useful for converting numeric date/time to R date/time objects

# for example, consider the string coming from DS1307 clock chip
# https://www.sparkfun.com/datasheets/Components/DS1307.pdf
# data arrives as Binary Coded Decimal

# "2022-04-12 22:00:56" as BCD in registers 00H through 07H
BCDdataFromDS1307 <- "0101 0110 0000 0000 0010 0010 0011 0001 0010 0000 0100 0010 0010"
BCDsplitDS1307 <- unlist(strsplit(BCDdataFromDS1307, split = " "))
splitDS1307 <- strtoi(BCDsplitDS1307, base = 2)
# splitDS1307 contains decimal conversion of each DS1307 register

ISOdatetime(year =  2000 + 10 * splitDS1307[12] + splitDS1307[13], 
            month = 10 * splitDS1307[10] + splitDS1307[11], 
            day = 10 * splitDS1307[8] + splitDS1307[9],
            hour = 10 * splitDS1307[5] + splitDS1307[6], 
            min = 10 * splitDS1307[3] + splitDS1307[4], 
            sec = 10 * splitDS1307[1] + splitDS1307[2] )

# or...
ISOdate(year = "2022", month = 1:12, day = 1)

# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates
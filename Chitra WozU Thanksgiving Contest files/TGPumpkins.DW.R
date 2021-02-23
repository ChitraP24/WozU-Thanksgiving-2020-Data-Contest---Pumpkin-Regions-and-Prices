# Thanksgiving COntest 2020 

# Import Data

#Keeping useful columns  
## West Region Datasets
keeps <- c("Commodity.Name","City.Name","Package","Variety","Date","Low.Price","High.Price","Origin","Item.Size","Color")
SF <- san.fransisco_9.24.2016_9.30.2017[keeps]

keeps <- c("Commodity.Name","City.Name","Package","Variety","Date","Low.Price","High.Price","Origin","Item.Size","Color")
LA <- los.angeles_9.24.2016_9.30.2017[keeps]


## East Region Datasets
keeps <- c("Commodity.Name","City.Name","Package","Variety","Date","Low.Price","High.Price","Origin","Item.Size","Color")
NY <- new.york_9.24.2016_9.30.2017[keeps]

keeps <- c("Commodity.Name","City.Name","Package","Variety","Date","Low.Price","High.Price","Origin","Item.Size","Color")
Phil <- philadelphia_9.24.2016_9.30.2017[keeps]

keeps <- c("Commodity.Name","City.Name","Package","Variety","Date","Low.Price","High.Price","Origin","Item.Size","Color")
Bos <- boston_9.24.2016_9.30.2017[keeps]

keeps <- c("Commodity.Name","City.Name","Package","Variety","Date","Low.Price","High.Price","Origin","Item.Size","Color")
Bal <- baltimore_9.24.2016_9.30.2017[keeps]

# Joining Datasets by Region
West_Region <- rbind(SF, LA)
East_Region <- rbind(NY, Phil, Bos, Bal)

# Transfer to CSV file
install.packages("writexl")
library(writexl)

write_xlsx(x = West_Region, path = "West_Region.csv", col_names = TRUE)
write_xlsx(x = East_Region, path = "East_Region.csv", col_names = TRUE)

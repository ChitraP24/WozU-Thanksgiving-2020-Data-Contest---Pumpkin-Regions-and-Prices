# Southern Region Datasets

keeps <- c("Commodity Name","City Name","Package","Variety","Date","Low Price","High Price","Origin","Item Size","Color")
mia_pumpkins <- miami_9_24_2016_9_30_2017[keeps]

keeps <- c("Commodity Name","City Name","Package","Variety","Date","Low Price","High Price","Origin","Item Size","Color")
atl_pumpkins <- atlanta_9_24_2016_9_30_2017[keeps]

keeps <- c("Commodity Name","City Name","Package","Variety","Date","Low Price","High Price","Origin","Item Size","Color")
dal_pumpkins <- dallas_9_24_2016_9_30_2017[keeps]

keeps <- c("Commodity Name","City Name","Package","Variety","Date","Low Price","High Price","Origin","Item Size","Color")
col_pumpkins <- columbia_9_24_2016_9_30_2017[keeps]

# Midwest Region Datasets

keeps <- c("Commodity Name","City Name","Package","Variety","Date","Low Price","High Price","Origin","Item Size","Color")
st.lou_pumpkins <- st_louis_9_24_2016_9_30_2017[keeps]

keeps <- c("Commodity Name","City Name","Package","Variety","Date","Low Price","High Price","Origin","Item Size","Color")
det_pumpkins <- detroit_9_24_2016_9_30_2017[keeps]

keeps <- c("Commodity Name","City Name","Package","Variety","Date","Low Price","High Price","Origin","Item Size","Color")
chi_pumpkins <- chicago_9_24_2016_9_30_2017[keeps]

# Joining Datasets by Region

South_RegionPumpkins <- rbind(dal_pumpkins,atl_pumpkins,col_pumpkins,mia_pumpkins)
Midwest_RegionPumpkins <- rbind(det_pumpkins,chi_pumpkins,st.lou_pumpkins)

# Transfer to CSV file
write.csv(South_RegionPumpkins,"c:/South_RegionPumpkins.csv")


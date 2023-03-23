managers_data <- read.csv("managers.csv")
new_managers_data <- read.csv("MoreData.csv")

#structure of the dataframe
str(new_managers_data)
str(managers_data)

names(new_managers_data)

include_list <- new_managers_data[c("Country",
                                    "Age","Date","Gender","Q1",
                                    "Q2","Q3","Q4","Q5")]


date_format <- "%m/%d/%y"
new_date_format <- "%d/%m/%y"

formatted_date <-as.Date(include_list$Date,format = "%m/%d/%Y")
formatted_date

str(formatted_date)


include_list$Date <- formatted_date
str(include_list$Date)


formatted_date <-as.Date(managers_data$Date,format = "%m/%d/%y")
formatted_date

str(formatted_date)

managers_data$Date <- formatted_date
str(managers_data$Date)


include_list$AgeCat[include_list$Age >= 45] <- "Elder"
include_list$AgeCat[include_list$Age >= 26 & include_list$Age <= 44] <- "Middle Aged"
include_list$AgeCat[include_list$Age <= 25] <- "Young"
include_list$AgeCat[is.na(include_list$Age)] <- "Elder"


str(include_list)


head(include_list)
head(managers_data)

names(managers_data)

managers_data1 <- managers_data[c(2:11)]


rbind(include_list,managers_data1)


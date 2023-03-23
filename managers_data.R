managers_data <- read.csv("managers.csv")

more_data <- read.csv("MoreData.csv")

managers_sample <- managers_data[sample(1:nrow(managers_data)
                                        ,3 , replace = FALSE),]

managers_sample

managers_sample1 <- managers_data[sample(1:nrow(managers_data)
                                        ,3 , replace = FALSE),]

managers_sample1

managers_sample2 <- managers_data[sample(1:nrow(managers_data)
                                         ,3 , replace = FALSE),]

managers_sample2



managers_sample2 <- managers_data[sample(1:nrow(managers_data)
                                         ,10 , replace = TRUE),]

managers_sample2


managers_data_order <- managers_data[order(managers_data$Age,decreasing = FALSE),]
  
managers_data_order
  

managers_data_order1 <- managers_data[order(managers_data$Gender,managers_data$Age ),]

managers_data_order1

write.csv(managers_sample2,file = "random_sample.csv")

managers_data_subset <-  subset(managers_data ,select = c("Age","Q1"))

managers_data_subset
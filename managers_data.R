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

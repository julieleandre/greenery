library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)

data = Copy_of_OpioidCrisis_Data
data = data %>% filter(data$Region != "Canada")
data = aggregate(data[, "Value"], list(data$Region), var)
d = data

#png(file = "C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\opioid\\barchart_opioid_death_prov.png")

out <- barplot(Value ~ Group.1,data = data, xlab="Region",ylab="Age-Adjusted Rate of Opioid Deaths",
        main="Age-Adjusted Rate of Opioid Deaths per Province")


#dev.off()


library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)
library(ggplot2)
library(MASS)
library(ggpubr)

# data <- read.csv("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\dataset\\all_subsetted_group.csv")
data <- read.csv("/home/tianyi/src/youreka/dataset/all_subsetted_group.csv")


# filter mental health and indigenous status
filtered <- data %>%
    filter(GEN_015 <= 5) %>%
    filter(SDC_015 <= 2)

# normalize NDVI into a range of [0, 1]
ndvi <- filtered$NDVI
filtered$NDVI <- (ndvi - min(ndvi)) / (max(ndvi) - min(ndvi))

# categorize NDVI into four intervals
#filtered$NDVI <- cut(
#  filtered$NDVI, 
#  breaks = c(-Inf, 0.25, 0.5, 0.75, Inf),
#  labels = c(1, 2, 3, 4)
#)

# change SDC_015, NDVI and GEN_015 to factor
filtered$SDC_015 <- as.factor(filtered$SDC_015)
filtered$NDVI <- as.factor(filtered$NDVI)
filtered$GEN_015 <- as.factor(filtered$GEN_015)

# sample data
sampled <- filtered %>% 
  group_by(SDC_015) %>%
  slice_sample(n = 500, replace=FALSE)

# rename
analysis_data <- sampled

m <- polr(GEN_015 ~ SDC_015 + NDVI, data = analysis_data, Hess=TRUE)
summary(m)

(ctable <- coef(summary(m)))

## calculate and store p values
p <- pnorm(abs(ctable[, "t value"]), lower.tail = FALSE) * 2

## combined table
(ctable <- cbind(ctable, "p value" = p))

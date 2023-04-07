library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)
library(ggplot2)
library(MASS)
library(ggpubr)

alpha <- 0.05

data <- read.csv("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\dataset\\all_subsetted.csv")
# data = read.csv("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\assumptions.csv")

filtered <- data %>%
    filter(GEN_015 <= 5) %>%
    filter(SDC_015 <= 2)

set.seed(14430)
sampled <- filtered %>%
    group_by(SDC_015) %>%
    sample_n(1000, replace = FALSE)

# normalize ndvi
ndvi <- sampled$NDVI
sampled$NDVI <- (ndvi - min(ndvi)) / (max(ndvi) - min(ndvi))

# categorize ndvi into 4 subcategories
sampled$NDVI <- cut(
  sampled$NDVI, 
  breaks = c(-Inf, 0.25, 0.5, 0.75, Inf),
  labels = c(1, 2, 3, 4)
)

# categorize ndvi into 4 subcategories
#sampled$NDVI <- cut(
#  sampled$NDVI, 
#  breaks = c(-Inf, 0.5, 0.6, 0.7, Inf),
#  labels = c(1, 2, 3, 4)
#)

# change to factor
sampled$SDC_015 <- as.factor(sampled$SDC_015)
sampled$NDVI <- as.factor(sampled$NDVI)

# rename
analysis_data <- sampled

# boxplot(analysis_data$GEN_015 ~ analysis_data$SDC_015)
# boxplot(analysis_data$GEN_015 ~ analysis_data$NDVI)

# Do a Box-Cox adjustment to coerce into a gaussian distribution
b <- boxcox(lm(analysis_data$GEN_015 ~ 1))
lambda <- b$x[which.max(b$y)]
analysis_data$GEN_015 <- (analysis_data$GEN_015 ^ lambda - 1) / lambda

# stat test for homogeineity of variance
### leveneTest(GEN_015 ~ group, data = analysis_data)
### shapiro.test(analysis_data$GEN_015)
# visual inspection pass for normality
### ggqqplot(adjusted_GEN_015)

two_way_results.aov <- aov(GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)
summary(two_way_results.aov)

TukeyHSD(two_way_results.aov, which = "SDC_015", conf.level = (1 - alpha))
TukeyHSD(two_way_results.aov, which = "NDVI", conf.level = (1 - alpha))

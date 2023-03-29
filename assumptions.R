library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)
library(ggplot2)
library(MASS)
library(ggpubr)

data = read.csv("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\greenery_mentalhealth_subset.csv")
# data = read.csv("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\assumptions.csv")

filtered = data %>% filter(GEN_015 <= 5) %>% filter(SDC_015 <= 2)
# filtered = data %>% filter(GEN_015 <= 5) %>% filter(SDC_015 <= 2) %>% filter(GEODGHR4 == 13903 | GEODGHR4 == 13901 | GEODGHR4 == 13902 | GEODGHR4 == 24906 | GEODGHR4 == 35965 | GEODGHR4 == 35940 | GEODGHR4 == 35930 | GEODGHR4 == 35935 | GEODGHR4 == 35937 | GEODGHR4 == 35955 | GEODGHR4 == 35956 | GEODGHR4 == 35957 | GEODGHR4 == 35946 | GEODGHR4 == 35961 | GEODGHR4 == 35962 | GEODGHR4 == 35995 | GEODGHR4 == 59914 | GEODGHR4 == 46901 | GEODGHR4 == 47904 | GEODGHR4 == 47906 | GEODGHR4 == 48932 | GEODGHR4 == 48934 | GEODGHR4 == 59913 | GEODGHR4 == 59932)

set.seed(14430)
sampled = filtered %>% group_by(SDC_015) %>% sample_n(1000, replace=FALSE)
analysis_data = sampled

### boxplot(analysis_data$GEN_015 ~ analysis_data$SDC_015)
### boxplot(analysis_data$GEN_015 ~ analysis_data$NDVI)

# Do a Box-Cox adjustment to coerce into a gaussian distribution
b = boxcox(lm(analysis_data$GEN_015 ~ 1))
# Exact lambda
lambda = b$x[which.max(b$y)]
adjusted_GEN_015 = (analysis_data$GEN_015 ^ lambda - 1) / lambda
analysis_data$GEN_015 = adjusted_GEN_015

# stat test for homogeineity of variance
### eveneTest(GEN_015 ~ group, data = analysis_data)
### shapiro.test(analysis_data$GEN_015)
# visual inspection pass for normality
### ggqqplot(adjusted_GEN_015)

group = as.factor(analysis_data$SDC_015)
# kruskal.test(GEN_015 ~ as.factor(analysis_data$SDC_015), data = analysis_data)
# kruskal.test(GEN_015 ~ group + NDVI, data = analysis_data)
# kruskal.test(GEN_015 ~ interaction(group, NDVI), data = analysis_data)

two_way_results.aov <- aov(GEN_015 ~ group + NDVI + group:NDVI, data = analysis_data)
summary(two_way_results.aov)

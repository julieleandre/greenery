library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)
library(ggplot2)
library(MASS)
library(ggpubr)

data <- read.csv("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\dataset\\all_subsetted_group.csv")

# filter mental health and indigenous status
filtered <- data %>%
    filter(GEN_015 <= 5) %>%
    filter(SDC_015 <= 2)

# normalize NDVI into a range of [0, 1]
ndvi <- filtered$NDVI
filtered$NDVI <- (ndvi - min(ndvi)) / (max(ndvi) - min(ndvi))

# categorize NDVI into four intervals
filtered$NDVI <- cut(
  filtered$NDVI, 
  breaks = c(-Inf, 0.25, 0.5, 0.75, Inf),
  labels = c(1, 2, 3, 4)
)

# sample data for New Brunswick
sampled <- filtered %>% filter(GEO_PRV == 13)

# change SDC_015 and NDVI to factor
sampled$SDC_015 <- as.factor(sampled$SDC_015)
sampled$NDVI <- as.factor(sampled$NDVI)

# improve normality of GEN_015 with a box-cox transformation
b <- boxcox(lm(sampled$GEN_015 ~ 1), plotit = FALSE)
lambda <- b$x[which.max(b$y)]
lambda <- round(lambda / 0.5) * 0.5
if (lambda == 0) {
  sampled$GEN_015 <- log(sampled$GEN_015)
} else {
  sampled$GEN_015 <- (sampled$GEN_015 ^ lambda - 1) / lambda 
}

# rename
analysis_data <- sampled

# boxplot(analysis_data$GEN_015 ~ analysis_data$SDC_015)
# boxplot(analysis_data$GEN_015 ~ analysis_data$NDVI)

# homogeneity of variance
leveneTest(GEN_015 ~ SDC_015 * NDVI, data = analysis_data)
# Levene's Test for Homogeneity of Variance (center = median)
#         Df F value Pr(>F)
# group    3    1.68 0.1693
#       1782     

# visual inspection of normality
ggqqplot(analysis_data$GEN_015)

# two way ANOVA
two_way_results.aov <- aov(GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)
summary(two_way_results.aov)
#                Df Sum Sq Mean Sq F value Pr(>F)  
# SDC_015         1    0.9  0.8618   3.758 0.0527 .
# NDVI            1    0.0  0.0002   0.001 0.9746  
# SDC_015:NDVI    1    0.3  0.3197   1.394 0.2379  
# Residuals    1782  408.6  0.2293                 
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# post-hoc tests
alpha <- 0.05
TukeyHSD(two_way_results.aov, which = "SDC_015", conf.level = (1 - alpha))
# Tukey multiple comparisons of means
#     95% family-wise confidence level
#
# Fit: aov(formula = GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)
#
# $SDC_015
#           diff        lwr         upr     p adj
# 2-1 -0.1260457 -0.2535652 0.001473802 0.0527043

TukeyHSD(two_way_results.aov, which = "NDVI", conf.level = (1 - alpha))
#   Tukey multiple comparisons of means
#     95% family-wise confidence level
#
# Fit: aov(formula = GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)
#
# $NDVI
#              diff         lwr        upr     p adj
# 4-3 -0.0007782409 -0.04872701 0.04717052 0.9746087

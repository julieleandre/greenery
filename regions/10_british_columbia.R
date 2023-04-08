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

# sample data (skip this step)
sampled <- filtered %>% filter(GEO_PRV == 59)

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
#          Df F value  Pr(>F)  
# group     7  1.8639 0.07108 .
#       10345                  
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# visual inspection of normality
ggqqplot(analysis_data$GEN_015)

# two way ANOVA
two_way_results.aov <- aov(GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)
summary(two_way_results.aov)
#                 Df Sum Sq Mean Sq F value   Pr(>F)    
# SDC_015          1    7.7   7.694  33.255 8.32e-09 ***
# NDVI             3    1.1   0.352   1.520    0.207    
# SDC_015:NDVI     3    0.5   0.158   0.683    0.562    
# Residuals    10345 2393.4   0.231                     
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# post-hoc tests
alpha <- 0.05
TukeyHSD(two_way_results.aov, which = "SDC_015", conf.level = (1 - alpha))
#   Tukey multiple comparisons of means
#     95% family-wise confidence level
#
# Fit: aov(formula = GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)
#
# $SDC_015
#           diff        lwr         upr p adj
# 2-1 -0.1052282 -0.1409969 -0.06945947     0

TukeyHSD(two_way_results.aov, which = "NDVI", conf.level = (1 - alpha))
#   Tukey multiple comparisons of means
#     95% family-wise confidence level
#
# Fit: aov(formula = GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)
#
# $NDVI
#             diff         lwr        upr     p adj
# 2-1  0.028195721 -0.01687751 0.07326896 0.3744466
# 3-1  0.014136821 -0.02988324 0.05815688 0.8425717
# 4-1 -0.003946403 -0.06848230 0.06058949 0.9986195
# 3-2 -0.014058900 -0.04062304 0.01250524 0.5247144
# 4-2 -0.032142125 -0.08629718 0.02201293 0.4224396
# 4-3 -0.018083225 -0.07136492 0.03519847 0.8193388

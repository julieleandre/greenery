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
sampled <- filtered

# change SDC_015 and NDVI to factor
sampled$SDC_015 <- as.factor(sampled$SDC_015)
sampled$NDVI <- as.factor(sampled$NDVI)

# improve normality of GEN_015 with a box-cox transformation
b <- boxcox(lm(sampled$GEN_015 ~ 1), plotit = FALSE)
lambda <- b$x[which.max(b$y)]
lambda <- -0.1
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
# group     7  1.9702 0.05504 .
#       72925                  
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# visual inspection of normality
ggqqplot(analysis_data$GEN_015)

# two way ANOVA
two_way_results.aov <- aov(GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)
summary(two_way_results.aov)
#                 Df Sum Sq Mean Sq F value Pr(>F)    
# SDC_015          1     38   38.48 190.671 <2e-16 ***
# NDVI             3     25    8.40  41.603 <2e-16 ***
# SDC_015:NDVI     3      1    0.30   1.466  0.221    
# Residuals    72925  14716    0.20                   
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 

# post-hoc tests
alpha <- 0.05
TukeyHSD(two_way_results.aov, which = "SDC_015", conf.level = (1 - alpha))
#   Tukey multiple comparisons of means
#     95% family-wise confidence level
#
# Fit: aov(formula = GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)
#
# $SDC_015
#           diff       lwr         upr p adj
# 2-1 -0.1031735 -0.117818 -0.08852901     0

TukeyHSD(two_way_results.aov, which = "NDVI", conf.level = (1 - alpha))
#   Tukey multiple comparisons of means
#     95% family-wise confidence level

# Fit: aov(formula = GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)

# $NDVI
#            diff         lwr          upr     p adj
# 2-1 -0.01176428 -0.02573766  0.002209099 0.1337041
# 3-1 -0.02952434 -0.04236833 -0.016680361 0.0000000
# 4-1 -0.06116816 -0.07679751 -0.045538807 0.0000000
# 3-2 -0.01776007 -0.02836073 -0.007159398 0.0000987
# 4-2 -0.04940388 -0.06324884 -0.035558921 0.0000000
# 4-3 -0.03164382 -0.04434797 -0.018939662 0.0000000

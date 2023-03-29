library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)

data = Copy_of_OpioidCrisis_Data

canada = data %>% filter(Region == "Canada")
data = data %>% filter(Region != "Canada")

# assumptions
boxplot(data$Value ~ data$Region)
leveneTest(Value ~ Region, data = data)
# Levene's Test for Homogeneity of Variance (center = median)
#      Df F value  Pr(>F)  
# group 11  1.7389 0.08637 .
#      60                  
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

shapiro.test(data$Value)
# 	Shapiro-Wilk normality test
#
# data:  data$Value
# W = 0.7951, p-value = 1.27e-08

# ANOVA
one_way_anova.aov <- aov(formula = Value ~ Region, data=data)
summary(one_way_results.aov)
#            Df Sum Sq Mean Sq F value   Pr(>F)    
# Region      12   4538   378.2    8.39 2.66e-09 ***
# Residuals   65   2930    45.1                     
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# Dunnett Test
library(DescTools)
data <- rbind(canada, data)
DunnettTest(x=data$Value, g=data$Region, control = "Canada")

#   Dunnett's test for comparing several treatments with a control :  
#     95% family-wise confidence level
# 
# $Canada
#                                        diff     lwr.ci    upr.ci   pval    
# Alberta-Canada                    7.8833333  -3.163180 18.929847 0.2930    
# British Columbia-Canada          14.9500000   3.903487 25.996513 0.0027 ** 
# Manitoba-Canada                  -2.2333333 -13.279847  8.813180 0.9994    
# New Brunswick-Canada             -8.1166667 -19.163180  2.929847 0.2625    
# Newfoundland and Labrador-Canada -8.7166667 -19.763180  2.329847 0.1948    
# Northwest Territories-Canada     -7.7833333 -18.829847  3.263180 0.3066    
# Nova Scotia-Canada               -7.4500000 -18.496513  3.596513 0.3555    
# Ontario-Canada                   -0.8333333 -11.879847 10.213180 1.0000    
# Prince Edward Island-Canada      -8.2833333 -19.329847  2.763180 0.2420    
# Quebec-Canada                    -9.6166667 -20.663180  1.429847 0.1195    
# Saskatchewan-Canada               1.9000000  -9.146513 12.946513 0.9999    
# Yukon-Canada                      8.5166667  -2.529847 19.563180 0.2155    
# 
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

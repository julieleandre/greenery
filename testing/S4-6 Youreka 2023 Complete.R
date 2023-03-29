# Youreka 2023: Sessions 4-6 Hypothesis Testing
# Tip: Use this script and its examples as a template for your own project's code! 

# ======================================================
# Session 4: T-Test
# Youreka Canada 2023 
# ======================================================

install.packages('tidyverse')
## Let's load tidyverse
library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)

# Import Dataset
# File --> Import Dataset --> Browse --> Click on "youreka_central_dataset" Excel file
myData <- youreka_central_dataset

## Do cortisol levels in men who take placebo different than men who take the drugs (1-5)?
# Hint: one-way ANOVA

# 1. Visualize the data & check for assumptions.
hist(myData$Cortisol_Level)
boxplot(myData$Cortisol_Level ~ myData$Group) 
# This boxplot is not publication ready — watch R Data Visualization Video!
leveneTest(Cortisol_Level ~ `Sex`, data = myData)
shapiro.test(myData$Cortisol_Level)

# 2. Check for equal variance (visualize data) and use Levene's test AND
##  Check for normality (visualize data) and use Shapiro Wilk test
##     equal variance & normal data = ANOVA
##     not normal data BUT similar-shape data = Kruskal-Wallis test
##     unequal variance = continue with ANOVA

# 4. run the ANOVA
One_way_results.aov <- aov(formula = Cortisol_Level ~ Group, data = myData)

# explanation of aov()
## aov(y ~ x, data)
## The response variable (y) is to the left of the tilde (~).
## The predictor variable (x) is to the right of the tilde.
## For the data parameter, we place the name of the dataset we want to analyze.

## ANOVA results
One_way_results.aov
summary(One_way_results.aov)

# 4. Run the Tukey HSD post-hoc test:
TukeyHSD(One_way_results.aov)

# Q: Which means are significantly different?
# A: Any results with p-value < 0.05!
# ==============================================================================
# One-Way Welch's test

oneway.test(Cortisol_Level ~ Group, data = myData)
# ==============================================================================
# Kruskal-Wallis test
kruskal.test(formula = Cortisol_Level ~ `Group`, data = myData)

# Then: Games-Howell post-hoc. Note: R does not have a built-in function, so the code below can be used to create it:

games.howell <- function(grp, obs) {
  # Create combinations
  combs <- combn(unique(grp), 2)
  
  # Statistics that will be used throughout the calculations:
  # n = sample size of each group
  # groups = number of groups in data
  # Mean = means of each group sample
  # std = variance of each group sample
  
  n <- tapply(obs, grp, length)
  groups <- length(tapply(obs, grp, length))
  Mean <- tapply(obs, grp, mean)
  std <- tapply(obs, grp, var)
  
  statistics <- lapply(1:ncol(combs), function(x) {
    mean.diff <- Mean[combs[2,x]] - Mean[combs[1,x]]
    # t-values
    t <- abs(Mean[combs[1,x]] - Mean[combs[2,x]]) / sqrt((std[combs[1,x]] / n[combs[1,x]]) + (std[combs[2,x]] / n[combs[2,x]]))
    # Degrees of Freedom
    df <- (std[combs[1,x]] / n[combs[1,x]] + std[combs[2,x]] / n[combs[2,x]])^2 / # numerator dof
      ((std[combs[1,x]] / n[combs[1,x]])^2 / (n[combs[1,x]] - 1) + # Part 1 of denominator dof
         (std[combs[2,x]] / n[combs[2,x]])^2 / (n[combs[2,x]] - 1)) # Part 2 of denominator dof
    # p-values
    p <- ptukey(t * sqrt(2), groups, df, lower.tail = FALSE)
    # sigma standard error
    se <- sqrt(0.5 * (std[combs[1,x]] / n[combs[1,x]] + std[combs[2,x]] / n[combs[2,x]]))
    # Upper Confidence Limit
    upper.conf <- lapply(1:ncol(combs), function(x) {
      mean.diff + qtukey(p = 0.95, nmeans = groups, df = df) * se
    })[[1]]
    # Lower Confidence Limit
    lower.conf <- lapply(1:ncol(combs), function(x) {
      mean.diff - qtukey(p = 0.95, nmeans = groups, df = df) * se
    })[[1]]
    # Group Combinations
    grp.comb <- paste(combs[1,x], ':', combs[2,x])
    # Collect all statistics into list
    stats <- list(grp.comb, mean.diff, se, t, df, p, upper.conf, lower.conf)
  })
  
  # Unlist statistics collected earlier
  stats.unlisted <- lapply(statistics, function(x) {
    unlist(x)
  })
  
  # Create dataframe from flattened list
  results <- data.frame(matrix(unlist(stats.unlisted), nrow = length(stats.unlisted), byrow=TRUE))
  # Select columns set as factors that should be numeric and change with as.numeric
  results[c(2, 3:ncol(results))] <- round(as.numeric(as.matrix(results[c(2, 3:ncol(results))])), digits = 3)
  # Rename data frame columns
  colnames(results) <- c('groups', 'Mean Difference', 'Standard Error', 't', 'df', 'p', 'upper limit', 'lower limit')
  return(results)
}

# After defining Games-Howell, you can now use it:

games.howell(grp = myData$Group,  # groups, the categorical variable
             obs = myData$Cortisol_Level) # observations, the continuous variable


# Two-Way ANOVA Example: What is the effect of drug type and sex (and their interaction) on cortisol levels?

two_way_results.aov <- aov(Cortisol_Level ~ Group + Sex + Group:Sex, data = myData)
summary(two_way_results.aov)
# =============================================================
# Session 6: Linear Regression
# Script version: Solution
# Youreka Canada 2023 DRAFT
#
# Lesson adapted from this website:
#   https://www.scribbr.com/statistics/linear-regression-in-r/
# =============================================================

library(tidyverse)
library(broom)   # for summarizing statistical model objects
library(ggpubr)
# install.packages('broom')
# install.packages('ggpubr')


# ==============================================================================
# PART 1. Simple linear regression

# What is the relationship between cortisol levels and age?

## 1. Explore data
## Q: What datatype is each variable?
## A: All doubles (a numerical type of data)
myData

## Q: What are the min, max, and median values for Cortisol Levels?
## A: 
summary(myData)

## 2. Check assumptions: normality, linearity
### Checking normality (dependent variable)
hist(myData$Cortisol_Level)
hist(myData$Age)

# Check normality using a Shapiro-Wilk test
shapiro.test(myData$Cortisol_Level)
shapiro.test(myData$`Age`)

## 3. Create the linear model
### the formula is lm(y ~ x, data)
Cortisol.Adverse.lm <- lm(Cortisol_Level ~ Age, myData)
summary(Cortisol.Adverse.lm)

## 4. Interpretation of regression output
# 1. The estimates (Estimate) for the model parameters:
#       (a) the value of the y-intercept, and
#       (b) the estimated effect of cortisol levels on the adverse effect score = slope of the line of best fit.
#
# 2. The standard error of the estimated values (Std. Error).
#
# 3. The test statistic (t value, in this case the t-statistic).
#
# 4. The p-value, Pr(>|t|), aka the probability of finding the given t-statistic
#    if the null hypothesis of no relationship were true.
#       (a) The p-value for the intercept shows whether the intercept is
#           significantly different from 0.
#       (b) The p-value for the slope tests for the significance of regression,
#           i.e., whether the line is better than just the mean alone (a
#            horizontal line)
#
# The final 3 lines are the model diagnostics.
#   The p-value indicates whether the model is a good fit for the data (lower
#   p-value implies better fit).

#   The multiple R-squared value can be converted into a percentage. 
#   So, in this case, x% of the variation in the cortisol levels 
#   can be explained by age.

# ==============================================================================
# Multiple linear regression

## The sample dataset file contains observations on the height, the age, 
##and the measured cortisol levels. 

## 1. Explore the data -- your turn
## Q: Given your exploration, what should the independent variable(s) be and
#     what is the dependent variable?
## A: x = height, age, y = cortisol levels
myData
summary(myData)
dim(myData)

## 2. Check the assumptions: independence of observations, normality, linearity,
# homoscedasticity
# Homoscedasticity refers to the assumption that all groups should be of equal
# variance for the dependent variable (x1 and y, x2 and y, etc.)

### Checking independence of observations (make sure relationship between independent
### variables not too highly correlated b/c adding highly correlated variables
### won't add any new info to your model).
cor(myData$Height, myData$Age)

### Checking normality: check whether your dependent variable follows a normal
### distribution. -- your turn
hist(myData$Cortisol_Level)

### Checking linearity -- your turn
plot(myData$Cortisol_Level ~ myData$Height)
plot(myData$Cortisol_Level ~ myData$Age)

### We will check for homoscedasticity after we make the model.

## 3. Creating the model
### it's as easy as adding "+" :)
cortisol.level.lm <- lm(Cortisol_Level ~ Height + Age, myData)
summary(cortisol.level.lm)

## 4. Checking for homoscedasticity
par(mfrow=c(2,2))   # to view all 4 plots at once
plot(cortisol.level.lm)
par(mfrow=c(1,1))

# the residuals seem to have equal variance, so we can say our model fits the
# assumption of homoscedasticity.

# ==============================================================================
# Logistic Regression

# What is the affect of age on adverse effect occurrence?

# Assumptions: no requirement of equal variances or normality.
  # Outcome variable must be binary.

# For odds ratio to be computed, binary variables must be coded into 0 (N) or 1 (Y).
# If M --> set as 0, else --> 1
myData$Adverse_Effects_Number <- 0
myData$Adverse_Effects_Number <- ifelse(myData$Adverse_Effects == "N", 0, 1)
myData$Adverse_Effects
myData$Adverse_Effects_Number

# Run Logistic Regression and Obtain Odds Ratio:

logRegAge <- glm(Adverse_Effects_Number ~ Age, family = binomial, myData)
summary(logRegAge)
exp(coef(logRegAge)) # Odds Ratio
exp(confint(logRegAge)) # Confidence Interval

# Since 1 is in between the confidence interval, the strength of the relationship is not strong.
# Farther away from 1 the OR is, stronger relationship between the two variables.
# Logistic regression analyses did not yield statistical significance: p = 0.456



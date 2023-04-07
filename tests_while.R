library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)
library(ggplot2)
library(MASS)
library(ggpubr)

data <- read.csv("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\dataset\\all_subsetted.csv")
# data = read.csv("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\assumptions.csv")

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

# rename
analysis_data <- sampled

alpha = 0.05
a <- 100
b <- 100
c <- 100
seed <- 0
most_significant_a <- 100
most_significant_c <- 100
most_significant_seed <- 0
significant_count <- 0

while (seed < 20000) {
  if ((a <= alpha) & (c <= alpha)) {
    print("################################################################")
    significant_count <- significant_count + 1

    if (a < most_significant_a & c < most_significant_c) {
      print("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
      most_significant_a <- a
      most_significant_c <- c
      most_significant_seed <- seed
    }
  }
  set.seed(seed)
  print(c(seed, a, b, c))
  seed <- seed + 1

  sampled <- filtered %>%
    group_by(SDC_015) %>%
    sample_n(1000, replace = FALSE)

  # change SDC_015 and NDVI to factor
  sampled$SDC_015 <- as.factor(sampled$SDC_015)
  sampled$NDVI <- as.factor(sampled$NDVI)

  # improve normality of GEN_015
  b <- boxcox(lm(sampled$GEN_015 ~ 1), plotit = FALSE)
  lambda <- b$x[which.max(b$y)]
  sampled$GEN_015 <- (sampled$GEN_015 ^ lambda - 1) / lambda

  # rename
  analysis_data <- sampled

  # two way ANOVA
  two_way_results.aov <- aov(GEN_015 ~ SDC_015 + NDVI + SDC_015:NDVI, data = analysis_data)

  a <- summary(two_way_results.aov)[[1]][["Pr(>F)"]][1]
  b <- summary(two_way_results.aov)[[1]][["Pr(>F)"]][2]
  c <- summary(two_way_results.aov)[[1]][["Pr(>F)"]][3]
}

print(most_significant_a)
print(most_significant_c)
print(significant_count)

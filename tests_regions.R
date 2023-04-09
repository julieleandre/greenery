library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)
library(ggplot2)
library(MASS)
library(ggpubr)

tests <- function(d) {
  # Population percentages
  p_s = table(d$SDC_015)
  p_n = table(d$NDVI)
  p_g = table(d$GEN_015)

  # homogeneity of variance
  l = leveneTest(GEN_015 ~ SDC_015 * NDVI, data = d)
  
  # two way anova
  two_way_results.aov <- aov(GEN_015 ~ SDC_015 * NDVI, data = d)
  s = summary(two_way_results.aov)

  # post-hoc tests
  t_s = TukeyHSD(two_way_results.aov, which = "SDC_015")
  t_n = TukeyHSD(two_way_results.aov, which = "NDVI")
  t_sn = TukeyHSD(two_way_results.aov, which = "SDC_015:NDVI")

  return(list(
    "Population of SDC_015" = p_s,
    "Population of NDVI" = p_n,
    "Population of GEN_015" = p_g,
    "Levene's test on GEN_015 ~ SDC_015 * NDVI" = l,
    "Two Way ANOVA" = s,
    "TukeyHSD on SDC_015" = t_s,
    "TukeyHSD on NDVI" = t_n,
    "TukeyHSD on SDC_015:NDVI" = t_sn  
  ))
}

data <- read.csv("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\dataset\\all_subsetted_group.csv")

# filter mental health and indigenous status
data <- data %>%
    filter(GEN_015 <= 5) %>%
    filter(SDC_015 <= 2)

# normalize NDVI into a range of [0, 1]
ndvi <- data$NDVI
data$NDVI <- (ndvi - min(ndvi)) / (max(ndvi) - min(ndvi))

# categorize NDVI into four intervals
data$NDVI <- cut(
  data$NDVI, 
  breaks = c(-Inf, 0.25, 0.5, 0.75, Inf),
  labels = c(1, 2, 3, 4)
)

# change SDC_015 and NDVI to factor
data$SDC_015 <- as.factor(data$SDC_015)
data$NDVI <- as.factor(data$NDVI)

# improve normality of GEN_015 with a box-cox transformation
b <- boxcox(lm(data$GEN_015 ~ 1), plotit = FALSE)
lambda <- b$x[which.max(b$y)]
lambda <- round(lambda / 0.5) * 0.5
lambda <- -0.1
if (lambda == 0) {
  data$GEN_015 <- log(data$GEN_015)
} else {
  data$GEN_015 <- (data$GEN_015 ^ lambda - 1) / lambda 
}

# rename
raw <- data

subsets = list(
  "canada" = raw %>%
    group_by(SDC_015, NDVI) %>%
    slice_sample(n = 125, replace = FALSE),

  "eastern" = raw %>%
    filter(GEO_PRV %in% c(10, 11, 12, 13, 24, 35)) %>%
    group_by(SDC_015, NDVI) %>%
    slice_sample(n = 100, replace = FALSE),
  "western" = raw %>%
    filter(GEO_PRV %in% c(46, 47, 48, 59)) %>%
    group_by(SDC_015, NDVI) %>%
    slice_sample(n = 100, replace = FALSE),
  "prairies" = raw %>%
    filter(GEO_PRV %in% c(46, 47, 48)) %>%
    group_by(SDC_015, NDVI) %>%
    slice_sample(n = 100, replace = FALSE),
  
  "newfoundland_and_labrador" = raw %>%
    filter(GEO_PRV == 10) %>%
    group_by(SDC_015, NDVI) %>%
    slice_sample(n = 50, replace = FALSE),
  "new_brunswick" = raw %>%
    filter(GEO_PRV == 13) %>%
    group_by(SDC_015, NDVI) %>%
    slice_sample(n = 50, replace = FALSE),
  "quebec" = raw %>%
    filter(GEO_PRV == 24) %>%
    group_by(SDC_015, NDVI) %>%
    slice_sample(n = 50, replace = FALSE),
  "ontario" = raw %>%
    filter(GEO_PRV == 35) %>%
    group_by(SDC_015, NDVI) %>%
    slice_sample(n = 50, replace = FALSE),
  "alberta" = raw %>%
    filter(GEO_PRV == 48) %>%
    group_by(SDC_015, NDVI) %>%
    slice_sample(n = 50, replace = FALSE),
  "british_columbia" = raw %>%
    filter(GEO_PRV == 59) %>%
    group_by(SDC_015, NDVI) %>%
    slice_sample(n = 50, replace = FALSE)
)

for (i in seq(1, length(subsets))) {
  subset <- subsets[i]
  subset_name <- names(subset)
  print(subset_name)

  results = tests(subset[[subset_name]])
  lines = c(paste("#", subset_name, sep=" "))
  for (j in seq(1, length(results))) {
    result <- results[j]
    result_name <- names(result)
    result_name <- paste("##", result_name, sep = " ")

    lines <- c(lines, result_name)
    lines <- c(lines, "```")
    lines <- c(lines, capture.output(print(result)))
    lines <- c(lines, "```")
    lines <- c(lines, " ")
  }

  filename <- paste(i, subset_name, sep = "_")
  filename <- paste(filename, ".md", sep = "")
  filepath <- paste("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\regions\\", filename, sep="")
  fileconn <- file(filepath)
  writeLines(lines, fileconn)
  close(fileconn)
}

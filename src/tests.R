library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)
library(ggplot2)
library(ggstatsplot)
library(MASS)
library(ggpubr)

data <- read.csv("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\src\\tests.csv")

sdc_015_data <- data.frame(data[c("SDC_015_STATISTIC","SDC_015_PVALUE", "SDC_015_DOF","SDC_015_CRAMERV")])
names(sdc_015_data) = c("STATISTIC", "PVALUE", "DOF", "CRAMERV")
sdc_015_data$TEST = "Demography"

ndvi_data <- data.frame(data[c("NDVI_STATISTIC","NDVI_PVALUE", "NDVI_DOF","NDVI_CRAMERV")])
names(ndvi_data) = c("STATISTIC", "PVALUE", "DOF", "CRAMERV")
ndvi_data$TEST = "Greenery"

inter_data <- data.frame(data[c("INTER_STATISTIC","INTER_PVALUE", "INTER_DOF","INTER_CRAMERV")])
names(inter_data) = c("STATISTIC", "PVALUE", "DOF", "CRAMERV")
inter_data$TEST = "Interaction"

grouped_gghistostats(
  data              = bind_rows(ndvi_data, sdc_015_data),
  binwidth          = 0.025,
  x                 = CRAMERV,
  type              = "robust",
  xlab              = "Cramér's V effect size",
  grouping.var      = TEST,
  normal.curve      = FALSE,
  plotgrid.args     = list(nrow = 1),
  annotation.args   = list(title = "Cramér's V effect size distribution for greenery and demography tests"),
  package = "ggthemes",
  palette = "excel_Grayscale"
)

ggsave("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\src\\cramerv_dist.png")

grouped_gghistostats(
  data              = bind_rows(ndvi_data, sdc_015_data, inter_data),
  binwidth          = 0.15,
  x                 = PVALUE,
  type              = "robust",
  xlab              = "P-value",
  grouping.var      = TEST,
  normal.curve      = FALSE,
  plotgrid.args     = list(nrow = 1),
  annotation.args   = list(title = "P-value distribution for greenery and demography tests"),
  package = "ggthemes",
  palette = "excel_Grayscale"
)

ggsave("C:\\Users\\xia_t\\Desktop\\Projects\\youreka\\src\\pvalue_dist.png")

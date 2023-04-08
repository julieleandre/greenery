# newfoundland_and_labrador
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
105 105 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
  0   0  97 113 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               70                81                44                12                 3 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   3  0.3579 0.7835
      206               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015        1   0.49  0.4912   2.481 0.1168  
NDVI           1   0.22  0.2204   1.113 0.2926  
SDC_015:NDVI   1   0.61  0.6079   3.070 0.0812 .
Residuals    206  40.78  0.1980                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

```
 
## TukeyHSD on SDC_015
```
$`TukeyHSD on SDC_015`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$SDC_015
           diff        lwr        upr     p adj
2-1 -0.09672924 -0.2177993 0.02434086 0.1167513


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
          diff         lwr       upr     p adj
4-3 0.06462648 -0.05679656 0.1860495 0.2952509


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff         lwr        upr     p adj
2:3-1:3  0.01340865 -0.22214231 0.24895960 0.9988541
1:4-1:3  0.17211602 -0.05291521 0.39714725 0.1984910
2:4-1:3 -0.03153588 -0.24605518 0.18298342 0.9811612
1:4-2:3  0.15870737 -0.07989497 0.39730972 0.3144673
2:4-2:3 -0.04494453 -0.27365954 0.18377049 0.9568818
2:4-1:4 -0.20365190 -0.42151736 0.01421356 0.0762762


```
 

# prairies
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
131  79   0   0 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               43                88                57                20                 2 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   3  1.7784 0.1524
      206               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value  Pr(>F)   
SDC_015        1   1.18  1.1832   7.152 0.00809 **
NDVI           1   0.30  0.3000   1.814 0.17956   
SDC_015:NDVI   1   0.50  0.4989   3.016 0.08395 . 
Residuals    206  34.08  0.1654                   
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
          diff       lwr         upr     p adj
2-1 -0.1501225 -0.260796 -0.03944897 0.0080897


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr        upr     p adj
2-1 -0.07799217 -0.1922231 0.03623879 0.1797528


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff        lwr         upr     p adj
2:1-1:1 -0.22805575 -0.4121945 -0.04391699 0.0083757
1:2-1:1 -0.17721671 -0.3879580  0.03352461 0.1327935
2:2-1:1 -0.20392136 -0.4196736  0.01183086 0.0714503
1:2-2:1  0.05083904 -0.1580519  0.25972993 0.9221714
2:2-2:1  0.02413439 -0.1898107  0.23807952 0.9912946
2:2-1:2 -0.02670465 -0.2639331  0.21052381 0.9913482


```
 

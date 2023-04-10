# alberta
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
222 222 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
222 222   0   0 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
              118               155               119                41                11 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   3  0.4306 0.7312
      440               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value  Pr(>F)   
SDC_015        1   1.75  1.7464   8.653 0.00344 **
NDVI           1   0.08  0.0798   0.395 0.52978   
SDC_015:NDVI   1   1.99  1.9905   9.862 0.00180 **
Residuals    440  88.81  0.2018                   
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
          diff        lwr         upr    p adj
2-1 -0.1254326 -0.2092389 -0.04162623 0.003438


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr        upr     p adj
2-1 -0.02681486 -0.1106212 0.05699147 0.5297775


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                diff         lwr          upr     p adj
2:1-1:1 -0.259345789 -0.41486278 -0.103828797 0.0001232
1:2-1:1 -0.160728082 -0.31624507 -0.005211090 0.0397009
2:2-1:1 -0.152247417 -0.30776441  0.003269575 0.0575483
1:2-2:1  0.098617707 -0.05689929  0.254134699 0.3598142
2:2-2:1  0.107098372 -0.04841862  0.262615364 0.2863052
2:2-1:2  0.008480666 -0.14703633  0.163997657 0.9990068


```
 

# prairies
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
200 200 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
200 200   0   0 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
              102               133               111                42                12 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   3  0.3894 0.7607
      396               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015        1   0.16  0.1554   0.731 0.3931  
NDVI           1   0.89  0.8859   4.168 0.0418 *
SDC_015:NDVI   1   0.01  0.0098   0.046 0.8303  
Residuals    396  84.16  0.2125                 
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
2-1 -0.03941557 -0.1300461 0.05121493 0.3930629


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr          upr     p adj
2-1 -0.09411965 -0.1847502 -0.003489143 0.0418475


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff        lwr        upr     p adj
2:1-1:1 -0.04930393 -0.2175043 0.11889647 0.8739563
1:2-1:1 -0.10400801 -0.2722084 0.06419240 0.3824300
2:2-1:1 -0.13353522 -0.3017356 0.03466518 0.1722548
1:2-2:1 -0.05470408 -0.2229045 0.11349633 0.8357891
2:2-2:1 -0.08423129 -0.2524317 0.08396912 0.5685649
2:2-1:2 -0.02952722 -0.1977276 0.13867319 0.9690411


```
 

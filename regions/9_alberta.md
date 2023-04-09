# alberta
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
100 100 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
100 100   0   0 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               47                70                54                23                 6 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   3   0.873  0.456
      196               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)
SDC_015        1   0.00 0.00070   0.003  0.954
NDVI           1   0.00 0.00049   0.002  0.962
SDC_015:NDVI   1   0.02 0.02333   0.111  0.739
Residuals    196  41.15 0.20997               

```
 
## TukeyHSD on SDC_015
```
$`TukeyHSD on SDC_015`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$SDC_015
           diff       lwr       upr    p adj
2-1 0.003751091 -0.124048 0.1315502 0.953899


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr       upr     p adj
2-1 -0.00312432 -0.1309234 0.1246747 0.9615954


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                 diff        lwr       upr     p adj
2:1-1:1 -0.0178482099 -0.2553172 0.2196208 0.9973748
1:2-1:1 -0.0247236213 -0.2621926 0.2127453 0.9931137
2:2-1:1  0.0006267711 -0.2368422 0.2380957 0.9999999
1:2-2:1 -0.0068754114 -0.2443444 0.2305936 0.9998481
2:2-2:1  0.0184749810 -0.2189940 0.2559439 0.9970914
2:2-1:2  0.0253503924 -0.2121186 0.2628194 0.9925871


```
 

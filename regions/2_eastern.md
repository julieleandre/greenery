# eastern
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
300 300 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
  0 200 200 200 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
              174               220               142                51                13 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   5  0.1646 0.9754
      594               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value  Pr(>F)   
SDC_015        1   1.91  1.9126   9.334 0.00235 **
NDVI           2   0.76  0.3805   1.857 0.15709   
SDC_015:NDVI   2   0.99  0.4930   2.406 0.09104 . 
Residuals    594 121.71  0.2049                   
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
          diff       lwr        upr     p adj
2-1 -0.1129179 -0.185506 -0.0403297 0.0023504


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr        upr     p adj
3-2 -0.03708331 -0.1434417 0.06927504 0.6912470
4-2 -0.08691867 -0.1932770 0.01943968 0.1338720
4-3 -0.04983536 -0.1561937 0.05652298 0.5138607


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                diff         lwr         upr     p adj
2:2-1:2 -0.020224778 -0.20325119  0.16280164 0.9995805
1:3-1:2  0.061663081 -0.12136333  0.24468949 0.9293075
2:3-1:2 -0.156054470 -0.33908088  0.02697194 0.1450550
1:4-1:2 -0.046625408 -0.22965182  0.13640100 0.9784234
2:4-1:2 -0.147436705 -0.33046312  0.03558971 0.1943447
1:3-2:2  0.081887858 -0.10113855  0.26491427 0.7964180
2:3-2:2 -0.135829692 -0.31885610  0.04719672 0.2773766
1:4-2:2 -0.026400630 -0.20942704  0.15662578 0.9984710
2:4-2:2 -0.127211927 -0.31023834  0.05581449 0.3508757
2:3-1:3 -0.217717550 -0.40074396 -0.03469114 0.0093127
1:4-1:3 -0.108288488 -0.29131490  0.07473792 0.5379007
2:4-1:3 -0.209099785 -0.39212620 -0.02607337 0.0145826
1:4-2:3  0.109429062 -0.07359735  0.29245547 0.5260572
2:4-2:3  0.008617765 -0.17440865  0.19164418 0.9999938
2:4-1:4 -0.100811297 -0.28383771  0.08221512 0.6155850


```
 

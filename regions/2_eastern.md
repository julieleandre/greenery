# eastern
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
  0  41 115  54 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               67                85                40                13                 5 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   5  0.3515 0.8809
      204               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)
SDC_015        1   0.16  0.1552   0.757  0.385
NDVI           2   0.22  0.1106   0.540  0.584
SDC_015:NDVI   2   0.25  0.1262   0.616  0.541
Residuals    204  41.81  0.2050               

```
 
## TukeyHSD on SDC_015
```
$`TukeyHSD on SDC_015`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$SDC_015
          diff        lwr        upr     p adj
2-1 -0.0543761 -0.1775727 0.06882046 0.3851892


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr       upr     p adj
3-2 -0.08476376 -0.2791896 0.1096621 0.5592504
4-2 -0.06821496 -0.2896292 0.1531993 0.7475490
4-3  0.01654881 -0.1597828 0.1928804 0.9733013


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                diff        lwr       upr     p adj
2:2-1:2  0.094346933 -0.3185565 0.5072504 0.9862538
1:3-1:2 -0.012334604 -0.3368568 0.3121876 0.9999978
2:3-1:2 -0.085465306 -0.3959429 0.2250123 0.9686434
1:4-1:2  0.011361517 -0.3403609 0.3630839 0.9999990
2:4-1:2 -0.086977515 -0.4714352 0.2974802 0.9868594
1:3-2:2 -0.106681536 -0.4733184 0.2599553 0.9602326
2:3-2:2 -0.179812239 -0.5340781 0.1744536 0.6898897
1:4-2:2 -0.082985416 -0.4739030 0.3079322 0.9901703
2:4-2:2 -0.181324448 -0.6019379 0.2392890 0.8164918
2:3-1:3 -0.073130702 -0.3187517 0.1724903 0.9561742
1:4-1:3  0.023696121 -0.2723478 0.3197400 0.9999104
2:4-1:3 -0.074642912 -0.4089199 0.2596340 0.9876164
1:4-2:3  0.096826823 -0.1837506 0.3774042 0.9198213
2:4-2:3 -0.001512209 -0.3221721 0.3191477 1.0000000
2:4-1:4 -0.098339032 -0.4590814 0.2624034 0.9699376


```
 

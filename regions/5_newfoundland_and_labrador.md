# newfoundland_and_labrador
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
102 102 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
  0   0 102 102 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               60                78                51                12                 3 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   3  0.1329 0.9404
      200               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)
SDC_015        1   0.06 0.06155   0.313  0.576
NDVI           1   0.30 0.30197   1.536  0.217
SDC_015:NDVI   1   0.30 0.30045   1.529  0.218
Residuals    200  39.31 0.19656               

```
 
## TukeyHSD on SDC_015
```
$`TukeyHSD on SDC_015`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$SDC_015
           diff        lwr        upr     p adj
2-1 -0.03473855 -0.1571569 0.08767985 0.5764036


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
         diff       lwr       upr     p adj
4-3 0.0769474 -0.045471 0.1993658 0.2166289


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                 diff         lwr       upr     p adj
2:3-1:3  0.0420157522 -0.18544424 0.2694757 0.9637550
1:4-1:3  0.1537017010 -0.07375829 0.3811617 0.3004538
2:4-1:3  0.0422088500 -0.18525114 0.2696688 0.9632819
1:4-2:3  0.1116859488 -0.11577404 0.3391459 0.5817627
2:4-2:3  0.0001930979 -0.22726690 0.2276531 1.0000000
2:4-1:4 -0.1114928510 -0.33895284 0.1159671 0.5831629


```
 

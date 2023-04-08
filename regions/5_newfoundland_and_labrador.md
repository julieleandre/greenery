# newfoundland_and_labrador
## Population of SDC_015
```
$`Population of SDC_015`

   1    2 
 105 1726 

```
 
## Population of NDVI
```
$`Population of NDVI`

   1    2    3    4 
   0    0  718 1113 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
              571               686               435               111                28 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
        Df F value Pr(>F)
group    3  0.1917 0.9021
      1827               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
               Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015         1    0.0  0.0472   0.234 0.6284  
NDVI            1    0.0  0.0022   0.011 0.9159  
SDC_015:NDVI    1    0.8  0.8052   3.998 0.0457 *
Residuals    1827  368.0  0.2014                 
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
           diff        lwr      upr     p adj
2-1 -0.02183463 -0.1103042 0.066635 0.6284106


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff         lwr        upr     p adj
4-3 0.002263111 -0.03986766 0.04439388 0.9161081


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                diff         lwr        upr     p adj
2:3-1:3  0.067075774 -0.09622177 0.23037332 0.7162141
1:4-1:3  0.172116020 -0.05320984 0.39744188 0.2020458
2:4-1:3  0.058443841 -0.10253593 0.21942361 0.7868181
1:4-2:3  0.105040246 -0.06264013 0.27272062 0.3726967
2:4-2:3 -0.008631933 -0.06572356 0.04845970 0.9800431
2:4-1:4 -0.113672179 -0.27909621 0.05175185 0.2896974


```
 

# alberta
## Population of SDC_015
```
$`Population of SDC_015`

   1    2 
 506 8275 

```
 
## Population of NDVI
```
$`Population of NDVI`

   1    2    3    4 
6729 2052    0    0 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
             2497              3353              2142               614               175 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
        Df F value Pr(>F)
group    3  1.3569  0.254
      8777               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
               Df Sum Sq Mean Sq F value   Pr(>F)    
SDC_015         1    4.7   4.750  23.813 1.08e-06 ***
NDVI            1    0.2   0.191   0.960   0.3272    
SDC_015:NDVI    1    1.0   0.987   4.946   0.0262 *  
Residuals    8777 1750.7   0.199                     
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
           diff       lwr         upr   p adj
2-1 -0.09980508 -0.139897 -0.05971313 1.1e-06


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
          diff         lwr       upr     p adj
2-1 0.01103407 -0.01104357 0.0331117 0.3272635


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff         lwr         upr     p adj
2:1-1:1 -0.12414431 -0.18365937 -0.06462926 0.0000005
1:2-1:1 -0.09268452 -0.21596785  0.03059882 0.2147577
2:2-1:1 -0.10706033 -0.17040561 -0.04371505 0.0000839
1:2-2:1  0.03145979 -0.07841551  0.14133510 0.8827234
2:2-2:1  0.01708398 -0.01268893  0.04685689 0.4530781
2:2-1:2 -0.01437581 -0.12637209  0.09762046 0.9876251


```
 

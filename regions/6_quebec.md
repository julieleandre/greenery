# quebec
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
105 105 

```
 
## Population of NDVI
```
$`Population of NDVI`

 1  2  3  4 
 0 38 92 80 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               68                75                55                 9                 3 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   5  0.2193  0.954
      204               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value   Pr(>F)    
SDC_015        1   2.17  2.1651  11.214 0.000967 ***
NDVI           2   0.33  0.1645   0.852 0.428134    
SDC_015:NDVI   2   0.30  0.1517   0.786 0.457060    
Residuals    204  39.39  0.1931                     
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
2-1 -0.2030758 -0.322641 -0.08351059 0.0009667


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr        upr     p adj
3-2 -0.09838772 -0.2984314 0.10165593 0.4777725
4-2 -0.10673264 -0.3111148 0.09764953 0.4351583
4-3 -0.00834492 -0.1669307 0.15024081 0.9915273


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff         lwr         upr     p adj
2:2-1:2 -0.16769944 -0.57840775  0.24300886 0.8484336
1:3-1:2 -0.03110327 -0.38853307  0.32632653 0.9998647
2:3-1:2 -0.32196748 -0.66854160  0.02460665 0.0852645
1:4-1:2 -0.12097601 -0.47242941  0.23047740 0.9206307
2:4-1:2 -0.24672827 -0.61521249  0.12175596 0.3891023
1:3-2:2  0.13659617 -0.20819087  0.48138320 0.8641635
2:3-2:2 -0.15426803 -0.48778814  0.17925208 0.7676242
1:4-2:2  0.04672344 -0.29186412  0.38531099 0.9987134
2:4-2:2 -0.07902882 -0.43526282  0.27720517 0.9879782
2:3-1:3 -0.29086420 -0.55602531 -0.02570309 0.0223982
1:4-1:3 -0.08987273 -0.36138016  0.18163470 0.9321332
2:4-1:3 -0.21562499 -0.50884404  0.07759406 0.2833551
1:4-2:3  0.20099147 -0.05605687  0.45803981 0.2200118
2:4-2:3  0.07523921 -0.20464465  0.35512307 0.9717054
2:4-1:4 -0.12575226 -0.41165581  0.16015129 0.8034274


```
 

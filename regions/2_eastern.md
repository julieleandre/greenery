# eastern
## Population of SDC_015
```
$`Population of SDC_015`

    1     2 
 1788 46269 

```
 
## Population of NDVI
```
$`Population of NDVI`

    1     2     3     4 
    0 10138 27456 10463 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
            15538             17880             11095              2838               706 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
         Df F value Pr(>F)
group     5  1.1659 0.3232
      48051               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
                Df Sum Sq Mean Sq F value   Pr(>F)    
SDC_015          1     16  16.413   81.10  < 2e-16 ***
NDVI             2      8   3.992   19.73 2.73e-09 ***
SDC_015:NDVI     2      0   0.208    1.03    0.357    
Residuals    48051   9724   0.202                     
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
          diff        lwr         upr p adj
2-1 -0.0976429 -0.1188936 -0.07639224     0


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
            diff         lwr          upr     p adj
3-2 -0.005728247 -0.01798122  0.006524724 0.5167374
4-2 -0.034936915 -0.04963013 -0.020243701 0.0000001
4-3 -0.029208668 -0.04132186 -0.017095476 0.0000000


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff         lwr          upr     p adj
2:2-1:2 -0.08477740 -0.15569916 -0.013855642 0.0086269
1:3-1:2  0.01930733 -0.06085423  0.099468888 0.9835117
2:3-1:2 -0.09143606 -0.16161041 -0.021261717 0.0028107
1:4-1:2 -0.04387810 -0.13864654  0.050890328 0.7743766
2:4-1:2 -0.11929570 -0.19018644 -0.048404964 0.0000240
1:3-2:2  0.10408473  0.06247497  0.145694492 0.0000000
2:3-2:2 -0.00665866 -0.02182228  0.008504960 0.8112960
1:4-2:2  0.04089930 -0.02457247  0.106371065 0.4786264
2:4-2:2 -0.03451830 -0.05271153 -0.016325074 0.0000010
2:3-1:3 -0.11074339 -0.15106603 -0.070420752 0.0000000
1:4-1:3 -0.06318543 -0.13856800  0.012197139 0.1601042
2:4-1:3 -0.13860303 -0.18015990 -0.097046163 0.0000000
1:4-2:3  0.04755796 -0.01710343  0.112219346 0.2892725
2:4-2:3 -0.02785964 -0.04287751 -0.012841773 0.0000019
2:4-1:4 -0.07541760 -0.14085576 -0.009979437 0.0130896


```
 

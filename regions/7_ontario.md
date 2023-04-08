# ontario
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
  0  58 134  18 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               54                67                63                19                 7 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   5  0.2087 0.9586
      204               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015        1   0.11  0.1054   0.496 0.4820  
NDVI           2   0.32  0.1623   0.764 0.4672  
SDC_015:NDVI   2   1.08  0.5399   2.541 0.0813 .
Residuals    204  43.35  0.2125                 
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
           diff       lwr        upr    p adj
2-1 -0.04480778 -0.170242 0.08062639 0.482037


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
            diff        lwr        upr     p adj
3-2 -0.084619274 -0.2556736 0.08643503 0.4736986
4-2 -0.090775371 -0.3844094 0.20285863 0.7460592
4-3 -0.006156097 -0.2793575 0.26704531 0.9984409


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                diff        lwr       upr     p adj
2:2-1:2 -0.058064001 -0.4344658 0.3183378 0.9978032
1:3-1:2 -0.058266696 -0.4063463 0.2898129 0.9967586
2:3-1:2 -0.183689780 -0.5407875 0.1734079 0.6774774
1:4-1:2 -0.256366700 -0.7506065 0.2378731 0.6695793
2:4-1:2  0.168172850 -0.4569965 0.7933422 0.9716225
1:3-2:2 -0.000202695 -0.2598550 0.2594496 1.0000000
2:3-2:2 -0.125625779 -0.3972481 0.1459966 0.7676950
1:4-2:2 -0.198302699 -0.6348034 0.2381980 0.7809264
2:4-2:2  0.226236850 -0.3543634 0.8068371 0.8722170
2:3-1:3 -0.125423084 -0.3562039 0.1053577 0.6234546
1:4-1:3 -0.198100004 -0.6104275 0.2142275 0.7376694
2:4-1:3  0.226439545 -0.3362129 0.7890920 0.8561508
1:4-2:3 -0.072676921 -0.4926452 0.3472913 0.9962064
2:4-2:3  0.351862629 -0.2164129 0.9201382 0.4800788
2:4-1:4  0.424539550 -0.2385527 1.0876318 0.4412578


```
 

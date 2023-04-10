# new_brunswick
## Population of SDC_015
```
$`Population of SDC_015`

 1  2 
42 42 

```
 
## Population of NDVI
```
$`Population of NDVI`

 1  2  3  4 
 0  0 42 42 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               24                31                20                 7                 2 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
      Df F value Pr(>F)
group  3  0.6749 0.5699
      80               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
             Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015       1  0.700  0.7003   3.384 0.0696 .
NDVI          1  0.136  0.1365   0.659 0.4192  
SDC_015:NDVI  1  0.101  0.1015   0.490 0.4859  
Residuals    80 16.558  0.2070                 
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
2-1 -0.1826189 -0.3801854 0.01494749 0.0695514


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr       upr     p adj
4-3 -0.08061803 -0.2781845 0.1169484 0.4191693


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff        lwr       upr     p adj
2:3-1:3 -0.25212590 -0.6205114 0.1162596 0.2829408
1:4-1:3 -0.15012498 -0.5185105 0.2182605 0.7091240
2:4-1:3 -0.26323698 -0.6316225 0.1051485 0.2470134
1:4-2:3  0.10200092 -0.2663846 0.4703864 0.8862104
2:4-2:3 -0.01111108 -0.3794966 0.3572744 0.9998207
2:4-1:4 -0.11311200 -0.4814975 0.2552735 0.8515926


```
 

# alberta
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
167  43   0   0 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               48                77                58                24                 3 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   3  0.2308 0.8749
      206               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015        1   0.62  0.6225   3.217 0.0743 .
NDVI           1   0.04  0.0448   0.232 0.6309  
SDC_015:NDVI   1   0.12  0.1213   0.627 0.4294  
Residuals    206  39.86  0.1935                 
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
          diff        lwr        upr    p adj
2-1 -0.1088879 -0.2285806 0.01080475 0.074348


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
          diff        lwr       upr     p adj
2-1 -0.0361941 -0.1845021 0.1121139 0.6309206


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff        lwr       upr     p adj
2:1-1:1 -0.13361766 -0.3099534 0.0427181 0.2056305
1:2-1:1 -0.09473900 -0.3679544 0.1784764 0.8058070
2:2-1:1 -0.10921941 -0.3875294 0.1690906 0.7399966
1:2-2:1  0.03887866 -0.2339957 0.3117531 0.9827925
2:2-2:1  0.02439824 -0.2535771 0.3023735 0.9958468
2:2-1:2 -0.01448041 -0.3620759 0.3331150 0.9995491


```
 

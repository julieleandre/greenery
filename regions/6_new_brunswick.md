# new_brunswick
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
 56 100 

```
 
## Population of NDVI
```
$`Population of NDVI`

 1  2  3  4 
 0  0 85 71 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               42                58                37                13                 6 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   3  0.6176 0.6046
      152               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015        1   0.65  0.6544   3.104 0.0801 .
NDVI           1   0.08  0.0790   0.375 0.5412  
SDC_015:NDVI   1   0.21  0.2132   1.012 0.3161  
Residuals    152  32.04  0.2108                 
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
          diff        lwr       upr     p adj
2-1 -0.1350129 -0.2864119 0.0163861 0.0801029


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr       upr     p adj
4-3 -0.04487367 -0.1907143 0.1009669 0.5441603


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                diff        lwr        upr     p adj
2:3-1:3 -0.195121147 -0.4579730 0.06773070 0.2205798
1:4-1:3 -0.148749499 -0.4779579 0.18045893 0.6443250
2:4-1:3 -0.186466790 -0.4493186 0.07638506 0.2574893
1:4-2:3  0.046371648 -0.2637665 0.35650975 0.9800290
2:4-2:3  0.008654357 -0.2298798 0.24718852 0.9996989
2:4-1:4 -0.037717291 -0.3478554 0.27242081 0.9890441


```
 

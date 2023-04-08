# new_brunswick
## Population of SDC_015
```
$`Population of SDC_015`

   1    2 
  56 1730 

```
 
## Population of NDVI
```
$`Population of NDVI`

   1    2    3    4 
   0    0 1228  558 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
              511               652               454               142                27 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
        Df F value Pr(>F)
group    3  1.6073 0.1857
      1782               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
               Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015         1    0.7  0.7383   3.637 0.0567 .
NDVI            1    0.0  0.0015   0.008 0.9309  
SDC_015:NDVI    1    0.3  0.2927   1.442 0.2300  
Residuals    1782  361.8  0.2030                 
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
2-1 -0.116662 -0.236646 0.003322004 0.0566821


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
            diff         lwr       upr     p adj
4-3 -0.001994424 -0.04710975 0.0431209 0.9309169


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                diff         lwr        upr     p adj
2:3-1:3 -0.173438150 -0.37213031 0.02525401 0.1117883
1:4-1:3 -0.148749499 -0.46855515 0.17105616 0.6294212
2:4-1:3 -0.170232351 -0.37235391 0.03188921 0.1332724
1:4-2:3  0.024688651 -0.23035544 0.27973274 0.9945851
2:4-2:3  0.003205799 -0.05700182 0.06341342 0.9990841
2:4-1:4 -0.021482852 -0.27920759 0.23624188 0.9965218


```
 

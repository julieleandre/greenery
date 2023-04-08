# prairies
## Population of SDC_015
```
$`Population of SDC_015`

    1     2 
 1277 13246 

```
 
## Population of NDVI
```
$`Population of NDVI`

   1    2    3    4 
9811 4712    0    0 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
             4035              5560              3625              1043               260 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
         Df F value  Pr(>F)  
group     3  3.1509 0.02387 *
      14519                  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
                Df Sum Sq Mean Sq F value  Pr(>F)    
SDC_015          1    9.1   9.141  46.399   1e-11 ***
NDVI             1    0.1   0.091   0.463 0.49610    
SDC_015:NDVI     1    2.2   2.244  11.392 0.00074 ***
Residuals    14519 2860.2   0.197                    
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
2-1 -0.08858825 -0.1140804 -0.06309614     0


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr       upr     p adj
2-1 0.005354497 -0.0100655 0.0207745 0.4961091


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff          lwr         upr     p adj
2:1-1:1 -0.11952998 -0.160436153 -0.07862381 0.0000000
1:2-1:1 -0.07949952 -0.147182090 -0.01181694 0.0135928
2:2-1:1 -0.10586634 -0.148663492 -0.06306918 0.0000000
1:2-2:1  0.04003046 -0.016519517  0.09658044 0.2644207
2:2-2:1  0.01366365 -0.007515736  0.03484303 0.3464350
2:2-1:2 -0.02636682 -0.084299383  0.03156575 0.6462439


```
 

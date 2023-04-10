# ontario
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
240 240 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
  0 160 160 160 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
              142               176               103                43                16 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   5  0.5621 0.7291
      474               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value   Pr(>F)    
SDC_015        1   3.83   3.830  18.299 2.29e-05 ***
NDVI           2   1.51   0.755   3.607   0.0279 *  
SDC_015:NDVI   2   0.14   0.072   0.343   0.7095    
Residuals    474  99.22   0.209                     
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
          diff        lwr         upr    p adj
2-1 -0.1786614 -0.2607303 -0.09659252 2.29e-05


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff        lwr          upr     p adj
3-2  0.01315748 -0.1071067  0.133421680 0.9641875
4-2 -0.11185184 -0.2321160  0.008412358 0.0744971
4-3 -0.12500932 -0.2452735 -0.004745121 0.0394543


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff         lwr          upr     p adj
2:2-1:2 -0.13009717 -0.33709310  0.076898757 0.4677363
1:3-1:2  0.04690707 -0.16008886  0.253902992 0.9871777
2:3-1:2 -0.15068928 -0.35768520  0.056306650 0.2979111
1:4-1:2 -0.07275508 -0.27975101  0.134240844 0.9159683
2:4-1:2 -0.28104577 -0.48804170 -0.074049848 0.0016230
1:3-2:2  0.17700423 -0.02999169  0.384000161 0.1425262
2:3-2:2 -0.02059211 -0.22758803  0.186403819 0.9997479
1:4-2:2  0.05734209 -0.14965384  0.264338013 0.9687115
2:4-2:2 -0.15094861 -0.35794453  0.056047321 0.2960114
2:3-1:3 -0.19759634 -0.40459227  0.009399585 0.0710286
1:4-1:3 -0.11966215 -0.32665807  0.087333779 0.5629424
2:4-1:3 -0.32795284 -0.53494877 -0.120956913 0.0001071
1:4-2:3  0.07793419 -0.12906173  0.284930121 0.8902888
2:4-2:3 -0.13035650 -0.33735242  0.076639429 0.4654141
2:4-1:4 -0.20829069 -0.41528662 -0.001294766 0.0475644


```
 

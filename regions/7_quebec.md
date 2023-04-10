# quebec
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
330 330 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
  0 220 220 220 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
              246               224               146                35                 9 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   5  1.4818 0.1936
      654               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value   Pr(>F)    
SDC_015        1   2.41  2.4064  11.455 0.000756 ***
NDVI           2   0.14  0.0718   0.342 0.710491    
SDC_015:NDVI   2   0.09  0.0433   0.206 0.813738    
Residuals    654 137.39  0.2101                     
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
          diff        lwr         upr     p adj
2-1 -0.1207648 -0.1908284 -0.05070108 0.0007556


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
            diff        lwr        upr     p adj
3-2 -0.031998579 -0.1346535 0.07065634 0.7444345
4-2 -0.030549093 -0.1332040 0.07210582 0.7641161
4-3  0.001449486 -0.1012054 0.10410440 0.9993936


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                diff         lwr        upr     p adj
2:2-1:2 -0.102556658 -0.27919776 0.07408445 0.5592569
1:3-1:2 -0.029949099 -0.20659020 0.14669200 0.9966964
2:3-1:2 -0.136604716 -0.31324582 0.04003639 0.2342751
1:4-1:2 -0.005286426 -0.18192753 0.17135468 0.9999994
2:4-1:2 -0.158368417 -0.33500952 0.01827269 0.1081426
1:3-2:2  0.072607558 -0.10403355 0.24924866 0.8487997
2:3-2:2 -0.034048059 -0.21068916 0.14259305 0.9939583
1:4-2:2  0.097270232 -0.07937087 0.27391134 0.6161288
2:4-2:2 -0.055811760 -0.23245286 0.12082934 0.9456970
2:3-1:3 -0.106655617 -0.28329672 0.06998549 0.5151352
1:4-1:3  0.024662674 -0.15197843 0.20130378 0.9986957
2:4-1:3 -0.128419318 -0.30506042 0.04822179 0.3001495
1:4-2:3  0.131318290 -0.04532281 0.30795939 0.2756888
2:4-2:3 -0.021763701 -0.19840480 0.15487740 0.9992882
2:4-1:4 -0.153081991 -0.32972310 0.02355911 0.1324418


```
 

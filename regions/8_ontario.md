# ontario
## Population of SDC_015
```
$`Population of SDC_015`

    1     2 
  980 21780 

```
 
## Population of NDVI
```
$`Population of NDVI`

    1     2     3     4 
    0  7214 13598  1948 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
             6994              8310              5383              1599               474 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
         Df F value Pr(>F)
group     5  0.2801 0.9242
      22754               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
                Df Sum Sq Mean Sq F value   Pr(>F)    
SDC_015          1     12  12.282  59.135 1.53e-14 ***
NDVI             2      4   2.199  10.589 2.53e-05 ***
SDC_015:NDVI     2      0   0.028   0.134    0.875    
Residuals    22754   4726   0.208                     
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
2-1 -0.1144398 -0.1436091 -0.08527058     0


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff          lwr          upr     p adj
3-2  0.01434093 -0.001217729  0.029899587 0.0781520
4-2 -0.03449271 -0.061766999 -0.007218423 0.0085359
4-3 -0.04883364 -0.074710892 -0.022956388 0.0000288


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff         lwr           upr     p adj
2:2-1:2 -0.10767268 -0.19508120 -2.026417e-02 0.0059735
1:3-1:2  0.02373617 -0.07580817  1.232805e-01 0.9842323
2:3-1:2 -0.09369338 -0.18046482 -6.921943e-03 0.0255206
1:4-1:2 -0.05031224 -0.21908809  1.184636e-01 0.9580768
2:4-1:2 -0.14142112 -0.23253555 -5.030669e-02 0.0001417
1:3-2:2  0.13140885  0.07895153  1.838662e-01 0.0000000
2:3-2:2  0.01397930 -0.00530742  3.326603e-02 0.3054720
1:4-2:2  0.05736045 -0.08868059  2.034015e-01 0.8735557
2:4-2:2 -0.03374844 -0.06757940  8.252829e-05 0.0509878
2:3-1:3 -0.11742955 -0.16881831 -6.604078e-02 0.0000000
1:4-1:3 -0.07404840 -0.22766094  7.956413e-02 0.7428565
2:4-1:3 -0.16515729 -0.22358127 -1.067333e-01 0.0000000
1:4-2:3  0.04338114 -0.10227949  1.890418e-01 0.9582420
2:4-2:3 -0.04772774 -0.07987690 -1.557858e-02 0.0003361
2:4-1:4 -0.09110888 -0.23939771  5.717994e-02 0.4978423


```
 

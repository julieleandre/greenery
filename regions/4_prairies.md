# prairies
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
200 200 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
200 200   0   0 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               90               148               115                41                 6 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   3  1.1129 0.3437
      396               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015        1   0.02  0.0177   0.094 0.7595  
NDVI           1   0.19  0.1905   1.008 0.3161  
SDC_015:NDVI   1   0.69  0.6877   3.637 0.0572 .
Residuals    396  74.87  0.1891                 
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
           diff         lwr       upr     p adj
2-1 -0.01331842 -0.09880115 0.0721643 0.7595346


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
          diff         lwr      upr    p adj
2-1 0.04364925 -0.04183347 0.129132 0.316056


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
               diff         lwr        upr     p adj
2:1-1:1 -0.09624312 -0.25488981 0.06240356 0.3998289
1:2-1:1 -0.03927545 -0.19792213 0.11937124 0.9194181
2:2-1:1  0.03033083 -0.12831585 0.18897751 0.9605713
1:2-2:1  0.05696767 -0.10167901 0.21561436 0.7907072
2:2-2:1  0.12657395 -0.03207273 0.28522064 0.1687413
2:2-1:2  0.06960628 -0.08904041 0.22825296 0.6699788


```
 

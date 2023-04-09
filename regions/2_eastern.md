# eastern
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
300 300 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
  0 200 200 200 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
              177               207               142                55                19 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   5  0.5079 0.7704
      594               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015        1   1.11  1.1126   5.056 0.0249 *
NDVI           2   0.69  0.3446   1.566 0.2098  
SDC_015:NDVI   2   0.11  0.0574   0.261 0.7706  
Residuals    594 130.70  0.2200                 
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
2-1 -0.08612499 -0.1613462 -0.01090374 0.0249003


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff         lwr        upr     p adj
3-2  0.08292490 -0.02729150 0.19314130 0.1813827
4-2  0.03815822 -0.07205818 0.14837463 0.6948266
4-3 -0.04476668 -0.15498308 0.06544973 0.6060757


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                diff          lwr        upr     p adj
2:2-1:2 -0.116538026 -0.306203565 0.07312751 0.4947721
1:3-1:2  0.070765499 -0.118900041 0.26043104 0.8944053
2:3-1:2 -0.021453726 -0.211119265 0.16821181 0.9995298
1:4-1:2  0.004698068 -0.184967471 0.19436361 0.9999997
2:4-1:2 -0.044919647 -0.234585186 0.14474589 0.9844200
1:3-2:2  0.187303524 -0.002362015 0.37696906 0.0551751
2:3-2:2  0.095084300 -0.094581240 0.28474984 0.7066449
1:4-2:2  0.121236094 -0.068429445 0.31090163 0.4487400
2:4-2:2  0.071618379 -0.118047160 0.26128392 0.8894661
2:3-1:3 -0.092219224 -0.281884764 0.09744632 0.7330448
1:4-1:3 -0.066067430 -0.255732970 0.12359811 0.9192196
2:4-1:3 -0.115685145 -0.305350685 0.07398039 0.5032395
1:4-2:3  0.026151794 -0.163513745 0.21581733 0.9987697
2:4-2:3 -0.023465921 -0.213131460 0.16619962 0.9992722
2:4-1:4 -0.049617715 -0.239283255 0.14004782 0.9757388


```
 

# quebec
## Population of SDC_015
```
$`Population of SDC_015`

  1   2 
150 150 

```
 
## Population of NDVI
```
$`Population of NDVI`

  1   2   3   4 
  0 100 100 100 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
               88               118                71                19                 4 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   5  1.3492 0.2436
      294               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015        1   0.96  0.9568   4.962 0.0267 *
NDVI           2   0.47  0.2343   1.215 0.2982  
SDC_015:NDVI   2   0.18  0.0900   0.467 0.6275  
Residuals    294  56.69  0.1928                 
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
2-1 -0.1129481 -0.2127368 -0.01315943 0.0266639


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
           diff         lwr       upr     p adj
3-2  0.09674642 -0.04953776 0.2430306 0.2656645
4-2  0.05124325 -0.09504093 0.1975274 0.6877032
4-3 -0.04550318 -0.19178736 0.1007810 0.7442437


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                 diff         lwr        upr     p adj
2:2-1:2 -0.0669670085 -0.31889396 0.18495994 0.9734892
1:3-1:2  0.1536700616 -0.09825689 0.40559701 0.5000285
2:3-1:2 -0.0271442245 -0.27907118 0.22478273 0.9996209
1:4-1:2  0.0632912732 -0.18863568 0.31521822 0.9793250
2:4-1:2 -0.0277717906 -0.27969874 0.22415516 0.9995761
1:3-2:2  0.2206370701 -0.03128988 0.47256402 0.1238210
2:3-2:2  0.0398227840 -0.21210417 0.29174974 0.9975773
1:4-2:2  0.1302582816 -0.12166867 0.38218523 0.6752996
2:4-2:2  0.0391952179 -0.21273173 0.29112217 0.9977543
2:3-1:3 -0.1808142861 -0.43274124 0.07111267 0.3119766
1:4-1:3 -0.0903787885 -0.34230574 0.16154816 0.9078764
2:4-1:3 -0.1814418522 -0.43336880 0.07048510 0.3081145
1:4-2:3  0.0904354976 -0.16149145 0.34236245 0.9076510
2:4-2:3 -0.0006275661 -0.25255452 0.25129939 1.0000000
2:4-1:4 -0.0910630637 -0.34299002 0.16086389 0.9051339


```
 

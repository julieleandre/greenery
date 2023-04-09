# ontario
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
               87                94                84                22                13 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
       Df F value Pr(>F)
group   5  0.7176 0.6107
      294               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
              Df Sum Sq Mean Sq F value Pr(>F)  
SDC_015        1   0.34  0.3445   1.537  0.216  
NDVI           2   0.04  0.0189   0.085  0.919  
SDC_015:NDVI   2   1.55  0.7735   3.452  0.033 *
Residuals    294  65.87  0.2241                 
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
           diff        lwr        upr     p adj
2-1 -0.06777089 -0.1753396 0.03979778 0.2159902


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
            diff        lwr       upr     p adj
3-2 -0.002647508 -0.1603367 0.1550417 0.9991380
4-2 -0.025052594 -0.1827418 0.1326366 0.9257257
4-3 -0.022405086 -0.1800943 0.1352841 0.9401327


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                 diff        lwr        upr     p adj
2:2-1:2 -0.1594664832 -0.4310348 0.11210185 0.5431675
1:3-1:2  0.0070566902 -0.2645116 0.27862502 0.9999997
2:3-1:2 -0.1718181885 -0.4433865 0.09975014 0.4577050
1:4-1:2 -0.1723001793 -0.4438685 0.09926815 0.4544393
2:4-1:2 -0.0372714915 -0.3088398 0.23429684 0.9987704
1:3-2:2  0.1665231734 -0.1050452 0.43809151 0.4939898
2:3-2:2 -0.0123517054 -0.2839200 0.25921663 0.9999947
1:4-2:2 -0.0128336962 -0.2844020 0.25873464 0.9999936
2:4-2:2  0.1221949916 -0.1493733 0.39376332 0.7899840
2:3-1:3 -0.1788748788 -0.4504432 0.09269345 0.4106736
1:4-1:3 -0.1793568696 -0.4509252 0.09221146 0.4075291
2:4-1:3 -0.0443281818 -0.3158965 0.22724015 0.9971769
1:4-2:3 -0.0004819908 -0.2720503 0.27108634 1.0000000
2:4-2:3  0.1345466970 -0.1370216 0.40611503 0.7141102
2:4-1:4  0.1350286878 -0.1365396 0.40659702 0.7109781


```
 

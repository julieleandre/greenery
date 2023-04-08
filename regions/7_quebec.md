# quebec
## Population of SDC_015
```
$`Population of SDC_015`

    1     2 
  605 19350 

```
 
## Population of NDVI
```
$`Population of NDVI`

    1     2     3     4 
    0  2924 10187  6844 

```
 
## Population of GEN_015
```
$`Population of GEN_015`

                0 0.669670084631926  1.04041540159238  1.29449436703876  1.48660077479215 
             7029              7494              4395               885               152 

```
 
## Levene's test on GEN_015 ~ SDC_015 * NDVI
```
$`Levene's test on GEN_015 ~ SDC_015 * NDVI`
Levene's Test for Homogeneity of Variance (center = median)
         Df F value Pr(>F)
group     5  0.6196 0.6849
      19949               

```
 
## Two Way ANOVA
```
$`Two Way ANOVA`
                Df Sum Sq Mean Sq F value   Pr(>F)    
SDC_015          1      3  3.0283  15.459 8.46e-05 ***
NDVI             2      3  1.6843   8.598 0.000185 ***
SDC_015:NDVI     2      0  0.0886   0.452 0.636162    
Residuals    19949   3908  0.1959                     
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
2-1 -0.07184683 -0.1076642 -0.03602945 8.46e-05


```
 
## TukeyHSD on NDVI
```
$`TukeyHSD on NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$NDVI
            diff          lwr          upr     p adj
3-2 -0.038492619 -0.060257302 -0.016727937 0.0001009
4-2 -0.030094641 -0.053014155 -0.007175128 0.0059219
4-3  0.008397978 -0.007815948  0.024611904 0.4448409


```
 
## TukeyHSD on SDC_015:NDVI
```
$`TukeyHSD on SDC_015:NDVI`
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = GEN_015 ~ SDC_015 * NDVI, data = d)

$`SDC_015:NDVI`
                diff          lwr          upr     p adj
2:2-1:2 -0.040121721 -0.162719957  0.082476515 0.9381458
1:3-1:2  0.007590392 -0.136911407  0.152092192 0.9999896
2:3-1:2 -0.080195871 -0.201129661  0.040737918 0.4083219
1:4-1:2 -0.006250487 -0.150842137  0.138341164 0.9999961
2:4-1:2 -0.071159464 -0.192428101  0.050109172 0.5502130
1:3-2:2  0.047712114 -0.035842153  0.131266380 0.5802500
2:3-2:2 -0.040074150 -0.067009754 -0.013138546 0.0003232
1:4-2:2  0.033871235 -0.049838327  0.117580796 0.8588649
2:4-2:2 -0.031037743 -0.059438932 -0.002636554 0.0227244
2:3-1:3 -0.087786264 -0.168878615 -0.006693912 0.0249031
1:4-1:3 -0.013840879 -0.127232825  0.099551067 0.9993327
2:4-1:3 -0.078749857 -0.160340728  0.002841014 0.0657280
1:4-2:3  0.073945385 -0.007306967  0.155197736 0.0987712
2:4-2:3  0.009036407 -0.010995605  0.029068419 0.7930819
2:4-1:4 -0.064908978 -0.146658874  0.016840918 0.2094833


```
 

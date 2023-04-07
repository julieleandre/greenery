# Greenery as a levelling factor for Indigenous mental health

## Variables
Independent
- greenery
- demography (indigenous or not)

Dependent
- Mental health


## Power Analysis
https://www.researchgate.net/post/What-is-the-best-way-to-determine-the-necessary-sample-size-for-a-two-way-ANOVA-in-a-psychological-study

GPower settings
- Test family: F tests
- Statistical test: ANOVA: Fixed effets, special, main effects and interactions
- Type of power analysis: A priori
- Input parameters
	- Effect size f: 0.25
	- Alpha err prob: 0.05
	- Power: 0.95
	- Numerator df: 1
	- Number of groups: 8


## Notes
"GEO_PRV", "GEODGHR4", "GEODVBHA", "SDC_015", "SDCDGCGT", "DEPDVSEV", "DEPDVPHQ", "DODEP", "DIS_005", "DIS_010", "DIS_035", "DIS_015", "DIS_040", "DIS_020", "DIS_025", "GEN_015"

catgorize into four variables according to normal distribution instead of linear grouping

try to not group by NDVI

```R
c <- function()
{
    env <- parent.frame()
    rm(
        list = setdiff( ls(all.names=TRUE, env = env), lsf.str(all.names=TRUE, env = env)),
        envir = env
    )
}
```

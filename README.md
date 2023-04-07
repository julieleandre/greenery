Homogeneity of variance (a.k.a. homoscedasticity)
	leveneTest(a, b)
	
	Null hypothesis: variances of a b are equal
	Hypothesis: variances of a b are not equal
	
	P < 0.05 reject null
	P > 0.05 reject hyp

Independence of observations

Normally-distributed dependent variable


indepedant variables
- drugs 1 through 5

dependant variable
- cortisol level

independant variables
- greenery
- demography (indigenous or not)

dependant variable
- mental health

"GEO_PRV", "GEODGHR4", "GEODVBHA", "SDC_015", "SDCDGCGT", "DEPDVSEV", "DEPDVPHQ", "DODEP", "DIS_005", "DIS_010", "DIS_035", "DIS_015", "DIS_040", "DIS_020", "DIS_025", "GEN_015"


catgorize into four variables according to normal distribution instead of linear grouping

try to not group by NDVI

c <- function()
{
    env <- parent.frame()
    rm(
        list = setdiff( ls(all.names=TRUE, env = env), lsf.str(all.names=TRUE, env = env)),
        envir = env
    )
}

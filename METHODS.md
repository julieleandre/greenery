# Methods

## Data Collection

Statistics Canada (StatCan) is a national agency aimed at providing primarily Canadian datasets (Canada, 2023). From their catalogue, we used two databases that contained the relevant metrics:

- The *Canadian Community Health Survey* (CCHS) (reference) notably assesses whether the participant is Indigenous or not, their self-perceived mental health over an ordinal scale, and the health region in which they are located. The collection period of CCHS from January 2 to December 24 of the year 2018 was selected for this cross sectional study to avoid the cohort of confounding variables introduced by Covid-19 (reference). 

- NDVI, a continuous greenery scale acquired from the *Corrected representation of the NDVI using historical MODIS satellite images (250 m resolution) from 2000 to 2022*, of the same year was associated to each person of the previous dataset depending on their location, precise down to their health region. Greenery of each of the 77 health regions were determined by averaging the NDVI of the cities found within. For smaller counties which contained only one city, the NDVI thereof was used. The continuous values of the NDVI scale were categorized into three groups using equal width binning for ease of testing.

After the combination of the aforementioned datasets, there are a total of n=72,933 effective participants spread across all provinces and territories except for Nova Scotia, Yukon, Nunavut and Northwest Territories due to missing data from either survey. 
> Each of these people associated with the key three variables of their demography, their greenery level and their mental health (figure 1) constitutes the data compiled with Pandas (Python 3.11) used for upcoming tests.

![Dataset](src/data_vis.png)

## Statistical Tests

The chi-squared test of independence was deemed the most appropriate given the three categorical variables, and the goal to prove their correlation. Assumptions are met because the variables are categorical, because the observations are independent by the design of the data collection process, and because counts in the contingency table are mutually exclusive as participants are sampled without replacement. Three different chi-squared tests were ran to assess the interaction between demography and mental health, between greenery and mental health, and between all three variables.

The data was imported into a Pandas DataFrame to perform statistical and hypothesis testing using SciPy. The large number of participants (n=72,933) could not be used directly in a chi-squared test, influenced by sample size (reference); that is why smaller optimal samples sizes for each of the three tests were computed using GPower to meet the desired effect size of 0.3, the alpha error probability of 0.05, and a power of 0.80. These small samples sizes, however, may be a source of sampling bias as they represent a mere 0.2% to 0.3% of the whole dataset. Indeed, we consequentely executed the three aforementioned tests 250 times each on different random samples. As such, we hope for a greater coverage of the tests across all available regions.

For each test, either a two-way or a three-way contingency table was built from the random samples with the *scipy.stats.contingency.crosstab* function. The p-value of the chi-squared test for indenpendence was then determined using *scipy.stats.chi2_contingency* with Yates’ correction for continuity. The Cramér's V effect size was also computed for the two-way tests; it could not be done for all three variables as it cannot generalize to a three-way contingency table.

The generated p-values and effect sizes of the three tests ran on 250 different random samples were cumulated into a results table.

```
1. goal comparisons (D-M
   		G-M
   		D-G-M)
2. therefore, chi-squared
3. chi-squared charactoristuc
	3)assumption #1
	4)assumption #2
	5)assumption #3
	1)decide n  (need 3 magic number, get from science forum)
	2)n far smaller than paticipant number, in our case (100,150,250)
		solve 2) randomly sample 250 times
5. result
   1) chi-result (statistical significants (p-value))
   		D-M
   		G-M
   		D-G-M

   	2) cramer-v (practical signitificants (effect size))
	   	D-M
   		G-M
   		(null) D-G-M
6. for caluculate
	panda
	scio
```
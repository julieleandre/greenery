# Methods

## Data Collection

Statistics Canada (StatCan) is a national agency aimed at providing primarily Canadian datasets (Canada, 2023). From their catalogue, we used two databases that contained the relevant metrics:

- The *Canadian Community Health Survey* (CCHS) (reference) notably assesses whether the participant is Indigenous or not, their self-perceived mental health over an ordinal scale and the health region in which they are located. The collection period of CCHS from January 2 to December 24 of the year 2018 was selected for this cross sectional study to avoid the cohort of confounding variables introduced by Covid-19 (reference). 

- NDVI, a continuous greenery scale acquired from the *Corrected representation of the NDVI using historical MODIS satellite images (250 m resolution) from 2000 to 2022*, of the same year were associated to each person of the previous dataset depending on their location, precise down to their health region. Greenery of each of the 77 health regions were determined by averaging the NDVI of the cities found within. For smaller counties which contained only one city, the NDVI thereof was used. The continuous values of the NDVI scale were categorized into three groups of low, medium and high greenery using equal width binning for ease of testing.

After the combination of the aforementioned datasets, there are a total of n=72,933 effective participants of all age groups spread across all provinces and territories except for Nova Scotia, Yukon, Nunavut and Northwest Territories due to missing data from either survey. For the upcoming tests, three categorical variables are relevant<sup>figure 1</sup>, the demography of the participants (Indigenous or Non-Indigenous), their greenery level and their mental health. Each of the valid and unique participants have their corresponding levels of these three metrics.

![Dataset](src/data_vis.png)

## Statistical Tests

The Chi-square test of independence was deemed the most appropriate given the three categorical variables and the goal to prove their correlation. Consequently, three different Chi-square tests were chosen to assess the interaction between demography and mental health (D~M), between greenery and mental health (G~M) and between all three variables (D~G~M). Before the tests could be executed, the following conditions had to be met:

- The assumption of categorical variables is met as all three variables are as such. Demography is a boolean; the participants are either Indigenous or Non-Indigenous. Greenery is an ordinal variable; the groups of low, medium, and high greenery are used. Similarly, mental health is also ordinal; the metric ranges from excellent, very good, good, fair to poor self-perceived mental health. Indeed, they are categorical variables fit for use in a Chi-square test.

- Using the previous assumption's argument, the condition that the levels of the variables are mutually exclusive is also fulfilled. Each participant belongs to only one group of each variable; participants cannot be present in multiple groups of each variable. Mutual exclusivity within each metric is thus ensured.

- The assumption that samples may not be reused within a single contingency table is guaranteed by the sampling method. Subjects are selected from the total n=72,933 population at random without replacement. Therefore, a single participant may only be counted once in one cell of each contingency table generated before any Chi-square test. 

- The condition of independent study groups is satisfied as per the previous explanation. Observations are selected at random regardless of their grouping based on the three variables. As such, participants have an equal chance of being selected; the samples are independent.

- After the sampling described previously, selected participants are cumulated into contingency tables which contain frequencies. The requirement that the table must contain counts is therefore met. Likewise, at least 80% of the counts within each contingency table are above 5 because of the large enough sample sizes selected for each of three different Chi-square tests <sup>1</sup> <sup>2</sup>.

As samples sizes are quite small<sup>2</sup> compared to the available dataset containing n=72,933 subjets, each of the D~M, G~M and D~G~M tests were executed 250 times each on different random samples to get a more complete overview of the database<sup>3</sup>. Statistical significance p-values resulting from the D~M, G~M and D~G~M Chi-square tests<sup>4</sup> were compiled into three separate distributions. Moreover, pratical significance effect size for the D~M and G~M tests were computed using Cramér's V method<sup>5</sup> and compiled into two distributions. Cramér's V method does not generalize to three variables; therefore, no practical significance distribution was generated for the D~G~M test. All the distributions are displayed into histograms <sup>6</sup>.

## Footnotes
<sup>1</sup> Sample sizes for each of the tests where determined using GPower (version 3.1.9.7) with the following standard parameters.
1. Effect size: 0.3
2. Alpha error probability: 0.05
3. Power: 0.80
4. Degrees of freedom: Computed for each test.

<sup>2</sup> The following are the determined sample sizes for each of the tests.
- 134 random samples for D~M test.
- 195 random samples for G~M test.
- 282 random samples for D~G~M test.

<sup>3</sup> Dataset sampling was done using Pandas (version 1.5.3) and NumPy (version 1.24.1) on Python (version 3.11).

<sup>4</sup> Chi-square tests performed with SciPy (version 1.10.1) using the *scipy.stats.chi2_contingency* method.

<sup>5</sup> Cramér's V tests performed with SciPy (version 1.10.1) using the *scipy.stats.contingency.association* method.

<sup>6</sup> Histograms with R (version 4.2.3) and ggstatsplot (version 0.11.1).

(reference to chi2 test assumptions https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3900058/)

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
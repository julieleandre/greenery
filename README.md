# Greenery as a levelling factor for Indigenous mental health

## Methods

1. Data wrangling (Using R 4.2.3)
    1. Mental health data from [Canadian Community Health Survey (CCHS)](https://www23.statcan.gc.ca/imdb/p2SV.pl?Function=getSurvey&SDDS=3226&). Subsetted into 3 variables:
        1. Categorical: SDC_015 (Demography; indigenous or not)
        2. Ordinal: GEN_015 (Self perceived mental health from 1 to 5)
        3. Categorical: GEODGHR4 (Health region)
    2. Greeness data from [Corrected representation of the NDVI using historical MODIS satellite images (250 m resolution) from 2000 to 2022](https://open.canada.ca/data/en/dataset/dc700f75-19d8-4913-9846-78615ca93784). Subsetted into 2 variables:
        1. Continous: NDVI (range of 0 to 1)
        2. Categorical: CITY (City name)
    3. NDVI of each health region were determined with an average of the NDVI of the cities found within. For smaller health regions which contained only one city, the NDVI thereof was used.
    4. Participants found within each health region were associated to their respective NDVI values.
    5. Participants were filtered down to those that responded for all the necessary variables (SDC_015 and GEN_015), and had an NDVI value associated. Population analysis of the dataset (src/dataset_visuals.R)
        1. 72933 total participants
            1. Demography (SDC_015)
                1. Indigenous: n = 3814
                2. Non-Indigenous: n = 69119
            2. Mental health (GEN_015)
                1. Excellent: n = 22573
                2. Very good: n = 27251
                3. Good: n = 17281
                4. Fair: n = 4644
                5. Poor: n = 1184
        2. 9 provinces
            1. Newfoundland and labrador: n = 1831
            2. Prince Edward Island: n = 1725
            3. New Brunswick: n = 1786
            4. Quebec: n = 19955
            5. Ontario: n = 22760
            6. Manitoba: n = 4493
            7. Saskatchewan: n = 1249
            8. Alberta: n = 8781
            8. British columbia: n = 10353
            9. Yukon, Nunavut, Northwest territories: Not available because of missing NDVI data (Far up North; therefore too much snow coverage for NDVI to be computed accurately).
            10. Nova Scotia: Missing because there were no respondants who met the two variable criteria.
        3. 77 different health regions with 77 different NDVI levels

2. Data preparation (Using Numpy, Pandas on Python 3.11)
    1. Equal width binning to divide NDVI into three categories (low, medium, high). Turns a continous NDVI variable into an ordinal one.
        1. Minimum NDVI is 0.40255; maximum NDVI, 0.7898.
        2. Values within [0.40255, 0.53163] are considered low NDVI.
        3. Values within [0.53163, 0.660716] are considered medium NDVI.
        4. Values within [0.660716, 0.7898] are considered high NDVI.
    2. Current variables:
        1. Independent, Categorical: SDC_015 (Demography; indigenous or not)
        2. Independent, Ordinal: NDVI (Greenery from 1 to 3)
        3. Dependent, Ordinal: GEN_015 (Self perceived mental health from 1 to 5)

4. Determine test parameters
    1. Current tests:
        1. Interaction between demography and mental health: GEN_015 ~ SDC_015
        2. Interaction between greenery and mental health: GEN_015 ~ NDVI
        3. Demography, greenery and mental health: GEN_015 ~ SDC_015 * NDVI
    2. Determine DF (degrees of freedom of tests):
        1. Interaction between demography and mental health: GEN_015 ~ SDC_015
            1. dof = (n_x - 1)(n_y - 1)
            2. dof = (2 - 1)(5 - 1)
            3. df = 4
        2. Interaction between greenery and mental health: GEN_015 ~ NDVI
            1. dof = (n_x - 1)(n_y - 1)
            2. dof = (4 - 1)(5 - 1)
            3. df = 12
        3. Demography, greenery and mental health: GEN_015 ~ SDC_015 * NDVI
            1. According to scipy.stats.chi2_contingency (version 1.10.1), df = 31
    3. Determine necessary sample size for each test using GPower (version 3.1.9.7)
        1. Input parameters (desired level of precision)
            1. Effect size (w): 0.3
            2. Alpha err prob: 0.05
            3. Power (1 - beta err prob): 0.80
            4. df: Depending on the test, use values of the previous step
            5. These are all commonly accepted values.
        2. Determined sample sizes for the tests:
            1. Interaction between demography and mental health: GEN_015 ~ SDC_015
                1. Necessary total sample size to achieve desired level of precision: 133
            2. Interaction between greenery and mental health: GEN_015 ~ NDVI
                1. Necessary total sample size to achieve desired level of precision: 193
            3. Demography, greenery and mental health: GEN_015 ~ SDC_015 * NDVI
                1. Necessary total sample size to achieve desired level of precision: 277
    4. Balanced sample sizes
        1. Interaction between demography and mental health: GEN_015 ~ SDC_015
            1. We want the two demography groups to have the same size
            2. Knowing we need 133 samples in total, 133/2 = 66.5
            3. Therefore we need 67 Indigenous, and 67 Non-Indigenous per test, making 134 samples in total.
        2. Interaction between greenery and mental health: GEN_015 ~ NDVI
            1. We want the three greenery level groups to have the same size
            2. Knowing we need 193 samples in total, 193/3 = 64.3
            3. Therefore we need 65 per level of greenery, making 65 * 3 = 195 samples in total.
        3. Demography, greenery and mental health: GEN_015 ~ SDC_015 * NDVI
            1. We want 2 * 3 = 6 groups (all possible combinations of demography and greenery) to have the same size
            2. Knowing we need 277 samples in total, 277/6 = 46.2
            3. Therefore we need 47 per level of greenery, making 47 * 6 = 282 samples in total.

5. Execute tests (Using Scipy, Numpy, Pandas on Python 3.11) (src/tests.ipynb)
    1. Chi-squared test is very sensitive to sample size. It is important to not use larger sample sizes than necessary. Therefore, using the previous step, we've determined a sample size that is slightly larger than the smallest necessary sample size.
    2. Those small sample sizes are not reresentative of our whole dataset (at n = 72933 participants).
    3. To alleviate sampling bias and to get tests representative of the whole population, we sample randomly 250 times for each of the three tests, and execute those tests 250 times each.
    4. Protocol
        1. For the interaction between demography and mental health: GEN_015 ~ SDC_015
            1. Sample randomly 67 Indigenous, 67 Non-Indigenous out of the 72933 participants. Therefore, 134 total.
            2. Build 2 * 5 contingency table using scipy.stats.contingency.crosstab (version 1.10.1)
            3. Execute chi-squared test on contingency table using scipy.stats.chi2_contingency (version 1.10.1) with Yates’ correction for continuity.
            4. Calculate Cramér's V effect size using scipy.stats.contingency.association with Yates’ correction for continuity.
        2. For the interaction between greenery and mental health: GEN_015 ~ NDVI
            1. Sample randomly 65 Low greenery, 65 Medium greenery, 65 High greenery out of the 72933 participants. Therefore, 195 total.
            2. Build 3 * 5 contingency table using scipy.stats.contingency.crosstab (version 1.10.1)
            3. Execute chi-squared test on contingency table using scipy.stats.chi2_contingency (version 1.10.1) with Yates’ correction for continuity.
            4. Calculate Cramér's V effect size using scipy.stats.contingency.association with Yates’ correction for continuity.
        3. For demography, greenery and mental health: GEN_015 ~ SDC_015 * NDVI
            1. Sample 47 Indigenous-Low greenery, 47 Indigenous-Medium greenery, 47 Indigenous-High greenery, 47 Non-Indigenous-Low greenery, 47 Non-Indigenous-Medium greenery, 47 Non-Indigenous-High greenery out of the 72933 participants. Therefore, 282 total.
            2. Build 2 * 3 * 5 (three way) contingency table using scipy.stats.contingency.crosstab (version 1.10.1)
            3. Execute chi-squared test on contingency table using scipy.stats.chi2_contingency (version 1.10.1) with Yates’ correction for continuity.
            4. (Cramér's V test is omitted because it cannot generalize to three variables).
        4. Repeat 250 times, and with chi-squared p-values and Cramér's V effect sizes cumulated into a table.
    5. Build histogram of the p-value and effect size distribution for the different tests using R 4.2.3 and ggstatsplot

import pandas as pd

data = pd.read_csv("mentalhealth.csv", sep=";")

COLUMNS = ["GEO_PRV", "GEODGHR4", "GEODVBHA", "SDC_015", "SDCDGCGT", "DEPDVSEV", "DEPDVPHQ", "DODEP", "DIS_005", "DIS_010", "DIS_035", "DIS_015", "DIS_040", "DIS_020", "DIS_025", "GEN_015"]

subset = data[COLUMNS]
subset.to_csv("mentalhealth_subset.csv")


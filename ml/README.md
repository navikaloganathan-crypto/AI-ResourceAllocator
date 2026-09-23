# Machine Learning — Phase 1: GP Need Assessment

## 1. Overview

This folder contains the data preparation and current development-need
assessment pipeline for 33 Gram Panchayats (GPs) in Devadurga.

The objective of Phase 1 is to combine GP-level demographic,
infrastructure, transport, electricity, health and related indicators
to calculate a data-driven composite Need Score.

---

## 2. Phase 1 Pipeline

The Phase 1 workflow is:

Data Cleaning
      ↓
GP-Level Data Integration
      ↓
Indicator Construction
      ↓
Min-Max Normalization
      ↓
Entropy Weighting
      ↓
Composite Need Score
      ↓
Priority Classification
      ↓
XAI Contribution Analysis

---

## 3. Study Unit

The unit of analysis is the Gram Panchayat.

Total Gram Panchayats:

33

---

## 4. Need Indicators

The final Need Score uses 11 indicators:

1. child_share
2. illiteracy_rate
3. marginal_worker_share
4. non_worker_share
5. school_college_deficiency
6. all_weather_road_deficiency
7. internal_pucca_road_deficiency
8. transport_deficiency
9. electricity_deficiency
10. drainage_deficiency
11. health_facility_deficiency

All indicators are transformed so that a higher normalized value
represents greater development need.

---

## 5. Normalization

Min-Max normalization is applied to transform the indicators to a
common 0–1 scale.

This allows indicators measured using different units to be combined
into a composite score.

---

## 6. Entropy Weighting

Entropy weighting is used to derive data-driven weights for the
11 indicators.

The resulting weights sum to 1.

The largest weights in the current dataset are:

- school_college_deficiency
- transport_deficiency
- all_weather_road_deficiency

The weights reflect the variation/information content of the indicators
across the 33 GPs. They should not be interpreted as official government
policy weights.

---

## 7. Need Score

The normalized indicators are combined using their entropy-derived
weights to calculate a composite Need Score.

The raw score is subsequently rescaled to a 0–100 range.

A higher score represents greater relative development need within
the study dataset.

---

## 8. Priority Classification

The 33 GPs are divided into three data-driven relative categories:

- Lower Need
- Moderate Need
- Higher Need

Each category contains 11 GPs.

These categories are analytical categories created for this study and
are not official government classifications.

---

## 9. XAI / Contribution Analysis

For each GP, the contribution of each indicator to the Need Score is
calculated.

The contribution percentages sum to approximately 100% for every GP.

This helps identify which indicators contribute most strongly to the
composite Need Score for each GP.

---

## 10. Education Data Handling

Education data was available for 20 of the 33 GPs.

For the remaining 13 GPs, education data was unavailable.

These 13 GPs were not assigned fabricated or zero education values.

Instead:

- The main Need Score uses the 11 indicators with complete coverage.
- Education is retained separately as a supplementary sub-index.
- `education_data_available` records whether education data exists.
- `education_need_subindex` is available only for GPs with education data.

---

## 11. Sensitivity Analysis

The entropy-weighted ranking was compared with an equal-weight
formulation.

The Spearman rank correlation between the two rankings was
approximately 0.883.

This indicates a strong positive association between the two rankings,
while some individual GP rankings change under equal weighting.

---

## 12. Output Files

### `final_need_assessment.csv`

Contains the final GP-level Need Score, rank, priority category,
indicators and education-data fields.

### `need_score_entropy_weights.csv`

Contains the entropy, diversification values and final weights for
the 11 indicators.

### `need_score_xai_explanation.csv`

Contains GP-level indicator contribution information used to explain
the Need Score.

### `devadurga_gp_education_data.csv`

Contains the available GP-level education data.

### `Devadurga_GPs_No_Education_Data.csv`

Contains the GPs for which education data was unavailable.

### `need_score_by_gp.png`

Visualization of the Need Score across the 33 GPs.

---

## 13. Validation

The final Phase 1 output was validated for:

- 33 GP records
- unique GP names
- unique Need Score ranks
- missing values in core Need Score indicators
- Need Score range
- priority category counts
- XAI contribution totals

The XAI contribution totals were approximately 100% for every GP.

---

## 14. Next Phase

Phase 2 will investigate historical data and define an appropriate
target variable for future development-need/impact prediction.

The Phase 2 model will be selected only after confirming that the
available historical data supports the proposed prediction task.

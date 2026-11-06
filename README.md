# Smoking Probability Models

Analysis of the probability of smoking using SMOKE.dta (Wooldridge) in Stata.

## Question
How do education and race relate to the probability of smoking?

## Methods
- Linear probability model (OLS)
- Logistic regression (odds ratios)

## Key findings
- Each additional year of education lowers the probability of smoking by about 1.95 percentage points (LPM) and the odds of smoking by about 8% (logit). Both are significant at 5%.
- Race (white) has no statistically significant effect once education is controlled for (p = 0.89).

## Files
- `smoke_analysis.do`: Stata code
- `smoke_analysis.log`: output

## Reproduce
Download SMOKE.dta, put it in the same folder as the do-file, and run `smoke_analysis.do` in Stata.

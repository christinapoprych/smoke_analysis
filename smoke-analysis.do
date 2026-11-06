* smoke_analysis.do
* Linear probability model and logit for smoking, SMOKE.dta

clear all
set more off
log using smoke_analysis.log, replace text

use SMOKE.dta, clear

* Create binary smoking variable
gen smoke = 1 if cigs>0
replace smoke = 0 if cigs==0

* Part 1: Linear probability model
regress smoke educ white

* Part 2: Effect of 4 more years of education
lincom 4*educ

* Part 4: Logistic regression (odds ratios)
logistic smoke educ white

* Percent change in odds
logit smoke educ white
display "educ:  " (exp(_b[educ]) - 1)*100 "% change in odds"
display "white: " (exp(_b[white]) - 1)*100 "% change in odds"

log close

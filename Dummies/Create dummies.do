********************************************************************************
*Creating dummies
********************************************************************************

cd "C:\Users\User\Documents\Gerhard\Aberdeen HOME\Yunikarn\Youtube\Projects\Stata tips and tricks\Create dummies"

use "WDI.dta", clear

*Overview
sum

*Dummy for high primary school enrolement rate
gen high=1 if prime>=80 
replace high=0 if high==.
replace high=. if prime==.

drop high

*Alternative approach: brackets not needed
gen high=(prime>=80)
replace high=. if prime==.

*Yet, another method
*Example: year dummies
tabulate year, gen(D)

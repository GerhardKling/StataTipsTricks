********************************************************************************
*Collapse
********************************************************************************

cd "C:\Users\User\Documents\Gerhard\Aberdeen HOME\Yunikarn\Youtube\Projects\Stata tips and tricks\Collapse command"

use "WDI.dta", clear

*Overview
sum

*Enrollment over time
tabstat prime, by(year)

*Collapse command
collapse (mean) prime, by(year) 
line prime year, xtitle("Year") ytitle("Primary school enrollment rate")



*Preserve sample
use "WDI.dta", clear
preserve

collapse (mean) prime, by(year) 
line prime year, xtitle("Year") ytitle("Primary school enrollment rate") 

restore

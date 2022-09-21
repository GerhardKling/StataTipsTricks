*Data import

cd "C:\Users\User\Documents\Gerhard\Aberdeen HOME\Yunikarn\Youtube\Projects\Stata tips and tricks\WDI data"

insheet using "WDI_data.csv", clear

rename v1 country
rename v2 code

expand 13

sort code

by code: gen year=_n+2006

gen prime = .

forvalues i=3/15 {
	replace prime = v`i' if year==2004+`i'
	}

label var prime "Adjusted net enrollment rate, primary (% of primary school age children)"

drop v*
sort code year

save WDI.dta, replace

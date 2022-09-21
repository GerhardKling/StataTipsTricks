"""
Created on Fri Jan 14 19:30:14 2022

@author: User
"""

import pandas as pd

file = "climate_cost.dta"

df = pd.read_stata(file)

df.to_stata("new.dta")
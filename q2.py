import pandas as pd
import numpy as np

# The most important part of this dataset seems to be the salary,
data = pd.read_csv('data.csv')
imputed_data = data

#Impute the salary with the mean on the data (there are some 0s check for nan too)
salary = data['Salary']
mean = np.mean(salary)
index = 0
bad_indexes = []
for number in salary:
    if number == np.nan or float(number) == 0.0:
        data.iloc[index, 2] = mean.round()
    index = index + 1

# Data after values have been imputed with the mean.
print(data)
# get some one hot encodes

staff_status_one_hot = pd.get_dummies(data['Employee Status'])
position_title_one_hot = pd.get_dummies(data['Position Title'])
print(position_title_one_hot)
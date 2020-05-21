import numpy as np
import pandas as pd

from matplotlib import pyplot as plt

data = pd.read_csv('data3.csv', header=None)
print(data)

plt.hist(data[1], density=1, bins=30)
plt.show()

# It seems that the data in this set has a pretty standard deviation
# There are no outliers, and the data is complete.

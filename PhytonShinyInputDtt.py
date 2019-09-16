import numpy as np
from math import sqrt
from numpy import mean
from scipy.stats import t

# function for calculating the t-test for two dependent samples
def dependent_ttest(data1, data2, alpha):
	# calculate means
	mean1, mean2 = mean(data1), mean(data2)
	# number of paired samples
	n = len(data1)
	# sum squared difference between observations
	d1 = sum([(data1[i]-data2[i])**2 for i in range(n)])
	# sum difference between observations
	d2 = sum([data1[i]-data2[i] for i in range(n)])
	# standard deviation of the difference between means
	sd = sqrt((d1 - (d2**2 / n)) / (n - 1))
	# standard error of the difference between the means
	sed = sd / sqrt(n)
	# calculate the t statistic
	t_stat = (mean1 - mean2) / sed
	# degrees of freedom
	df = n - 1
	# calculate the critical value
	cv = t.ppf(1.0 - alpha, df)
	# calculate the p-value
	p = (1.0 - t.cdf(abs(t_stat), df)) * 2.0
	# return everything
	return t_stat, df, cv, p

# function for simulating power
def power_simulate(testrepeat, maxdatasetsize, alpha, m1, m2, sd1, sd2):
    np.random.seed(17)
    powl = []
    output = np.zeros((testrepeat,maxdatasetsize,5))
    for datasetsize in range(2,maxdatasetsize):
        for i in range(testrepeat):
            algone = np.random.normal(m1, sd1, datasetsize)
            algtwo = np.random.normal(m2, sd2, datasetsize)
            t_statt, dft, cvt, tt = dependent_ttest(algone,algtwo, alpha)
            output[i,datasetsize,0] = t_statt
            output[i,datasetsize,1] = dft
            output[i,datasetsize,2] = cvt
            output[i,datasetsize,3] = tt
            if tt > alpha:
                output[i,datasetsize,4]+=1
#calculate % significance
        power = 1 - sum(output[:,datasetsize,4])/testrepeat
        powl.append(power)
    return powl

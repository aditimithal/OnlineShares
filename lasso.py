from sklearn import linear_model

output=[]
inputt=[]
k=0
import csv
with open('OnlineNewsPopularity.csv', 'rb') as csvfile:
	spamreader = csv.reader(csvfile, delimiter=',')
	for row in spamreader:
		row_input=[]
		for elem in xrange(1,len(row)-1):
			row_input.append(row[elem])
		output.append(row[-1])
		inputt.append(row_input)

clf = linear_model.Lasso(alpha=0.1, max_iter=100000)
clf.fit(inputt, output)
# Lasso(alpha=0.1, copy_X=True, fit_intercept=True, max_iter=1000,
#    normalize=False, positive=False, precompute=False, random_state=None,
#    selection='cyclic', tol=0.0001, warm_start=False)
print(clf.coef_)
print(clf.intercept_)

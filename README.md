# OnlineShares

Preprocessing the data is an important step for our project because there were many outliers and various attributes/independent variable in teh data set. We used the following approach to do the necessary pre-processing:
1) To detect the outliers we used the R script and ploted a box-plot...................-Juhi write about this
2) In order to find the attributes which are relevant and define the  output, we are going to use 3 approached for ranking them and finding the relevace:-
a) LASSO (L1) Why?
b) Neural Net for ranking them Why?
c) RRF What? Why?

We will be using all these technique to finally determine the independent variables so that there is no collinearity as well as the output is justified by the input variables. In a way we are also tending towards dimentionality reduction.

Step by Step

1) LASSO
For the objective function to converge, we are using more number of iterations. The main reason why we are going to use LASSO is to find out tye variables which have non-zero coefficients so that we only take those into out final regression model.

# Naive-Bayes-using-Matlab

The Main script performs the following tasks:

1. Read the dataset.

2. Generate naïve Bayes' model using the training set

3. Determine the predictions on the test data.

learnProb function takes the data matrix and the corresponding labels as input parameter and returns the corresponding parameters needed for naïve Bayes'.

testMAP and testML functions are for making predictions using MAP or ML in naïve Bayes'.
Predicted labels are 0 or 1
The second and third parameters are for P(C|x) for MAP and P(x|C) for ML


# Loading training data from the file

dat = load('trainingData.txt');

# Seperately storing labels from data
trainLabels = dat(:,end);

# Seperately storing data excluding labels
trainX = dat(:,1:end-1);

# Finding model parameters
[probVecClass0 probVecClass1 prior0 prior1]  = learnProb (trainX,trainLabels);

prior0

prior1

#probVecClass0

#probVecClass1



# Loading testing data from the file

X = load('testingData.txt');

#X = [0 0 1]

[predictedLabels MAPClass0 MAPClass1] = testMAP(X,probVecClass0,
						probVecClass1,prior0,prior1);
            

MAPClass0
MAPClass1            
predictedLabels            



[predictedLabels MLClass0 MLClass1] = testML(X,probVecClass0,
						probVecClass1,prior0,prior1);


MLClass0
MLClass1               
predictedLabels   


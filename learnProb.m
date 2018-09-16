## Copyright (C) 2018 Talha Hanif Butt
## 

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} learnProb (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Talha Hanif Butt <talha@talha-Inspiron-15-7000-Gaming>
## Created: 2018-09-09

# This function takes the data matrix trainX and the corresponding labels 
# as input parameter and returns the corresponding parameters needed for Naïve Bayes'.

# For each class, a probability vector is needed.  So P(x|C=0) and 
# P(x|C=1) can be stored in the variables  probVecClass0 and probVecClass1
# For example for three binary features, P(x=[1 1 1]T|C=1) would be a vector of 
# probabilities [3/7 4/7 4/7] T.  Note this is P(x1=1|C=1), P(x2=1|C=1) and P(x3=1|C=1)
# Similarly compute P(x|C=0) and priors for both classes

function [probVecClass0 probVecClass1 prior0 prior1]  = learnProb (trainX,trainLabels)

# Calculating prior probability of Class 0 with smoothing
  prior0 = (sum(trainLabels == 0)+1)/(size(trainLabels)(1)+2);

# Calculating prior probability of Class 1 with smoothing
  prior1 = (sum(trainLabels == 1)+1)/(size(trainLabels)(1)+2);

# Calculating probability vectors for Class 0 and 1 considering MAP

# Calculating X/C with smoothing

  probVecClass0 = zeros(size(trainX)(2),1);
  probVecClass1 = zeros(size(trainX)(2),1);
  
  
  for i= 1:size(trainX)(2)
 
    temp_X = trainX(:,i);
    
    probVecClass0(i,1) = (sum(temp_X(trainLabels==0)==0)+1)/(sum(trainLabels==0)+2);
    
    probVecClass1(i,1) = (sum(temp_X(trainLabels==1)==1)+1)/(sum(trainLabels==1)+2);
 
  endfor 



endfunction

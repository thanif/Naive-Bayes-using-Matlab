## Copyright (C) 2018 Talha Hanif Butt
## 

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} MAPClass (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Talha Hanif Butt <talha@talha-Inspiron-15-7000-Gaming>
## Created: 2018-09-09

# Function for making predictions using MAP in naïve Bayes'.
# The second and third parameters are for P(C|x) for MAP

function [predictedLabels MAPClass0 MAPClass1] = testMAP(X,probVectorClass0,
						probVectorClass1,prior0,prior1)
            
         


# Calculating log probability of each feature in each test example  

  probVector_0 = zeros(size(X));
  probVector_1 = zeros(size(X));

  for i= 1:size(X)(1)
    
    for j= 1:size(X)(2)

      if X(i,j) == 0
          
        probVector_0(i,j) = log(probVectorClass0(j));
        probVector_1(i,j) = log(1-probVectorClass1(j));
       
      endif 
     
      if X(i,j) == 1
     
        probVector_1(i,j) = log(probVectorClass1(j));
        probVector_0(i,j) = log(1-probVectorClass0(j));
    
      endif 

    endfor
  endfor
  
#  probVector
# Calculating probability of examples belonging to a certain class

  MAPClass0  = zeros(size(X)(1),1);
  MAPClass1  = zeros(size(X)(1),1);
  
  for i= 1:size(X)(1)
    
    MAPClass0(i) = sum(probVector_0(i,:))+prior0;            
    MAPClass1(i) = sum(probVector_1(i,:))+prior1; 
    
  endfor  
    
# Assigning labels to the examples    

  predictedLabels = zeros(size(X)(1),1);
  
  for i= 1:size(X)(1)
  
    if MAPClass0(i) > MAPClass1(i)
    
      predictedLabels(i) = 0;
    
    endif
    
    if MAPClass1(i) > MAPClass0(i)
    
      predictedLabels(i) = 1;
    
    endif
    
    if MAPClass0(i) == MAPClass1(i)
    
      predictedLabels(i) = 1;
    
    endif
  
  endfor
    


 

endfunction

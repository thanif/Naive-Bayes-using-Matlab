## Copyright (C) 2018 Talha Hanif Butt
## 


## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} MLClass (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Talha Hanif Butt <talha@talha-Inspiron-15-7000-Gaming>
## Created: 2018-09-09

# Function for making predictions using ML in naïve Bayes'.
# The second and third parameters are for P(x|C) for ML

function [predictedLabels MLClass0 MLClass1] = testML(X,probVectorClass0,
						probVectorClass1,prior0,prior1)
            
         
# Calculating log probability of each feature of each test example  

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
    
  MLClass0  = zeros(size(X)(1),1);
  MLClass1  = zeros(size(X)(1),1);
  
  for i= 1:size(X)(1)
    
    MLClass0(i) = sum(probVector_0(i,:));            
    MLClass1(i) = sum(probVector_1(i,:)); 
    
  endfor  
    
# Assigning labels to the examples    

  predictedLabels = zeros(size(X)(1),1);
  
  for i= 1:size(X)(1)
  
    if MLClass0(i) > MLClass1(i)
    
      predictedLabels(i) = 0;
    
    endif
    
    if MLClass1(i) > MLClass0(i)
    
      predictedLabels(i) = 1;
    
    endif
    
    if MLClass0(i) == MLClass1(i)
    
      predictedLabels(i) = 1;
    
    endif
  
  endfor
    


 

 

endfunction

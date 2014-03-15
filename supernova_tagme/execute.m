% we have saved the training data in a file 
% named traindata.mat and the validation data in a
% file named validationdata.mat and testdata in testdata.mat 

load('traindata.mat') ; 
model = svmtrain(y,X,'-s 0 -t 2 -g .006') ; % training the model 

load('validationdata.mat') ; 


y_valid = zeros([1000 1]) ; 
y_valid(1:200) = 1 ;
y_valid(201:400) = 2 ; 
y_valid(401:600) = 3 ; 
y_valid(601:800) = 4 ; 
y_valid(801:1000) = 5 ; 

% making predictions from the model 
[predict_lv, accuracy_valid, prob_estimates] = svmpredict(y_valid,X_valid, model) ; 

%making predictions on the test data 
load('testData.mat') ; 

y_test = zeros([3809 1]) ;  % dummy variable 
[predict_t, accuracy_test, prob_estimates] = svmpredict(y_test,X_test, model)  ;  


% predict_t contains the final results 
% we have used this predict_t to generate the final 
% output txt file which has been submitted . 
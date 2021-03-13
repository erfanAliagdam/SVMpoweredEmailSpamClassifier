clear; close all; clc

fprintf("train by spamTrain.m \n")
load('spamTrain.mat');
c = 0.1;
model = svmTrain(X, y, c, @linearKernel);
predict = svmPredict(model, X);
fprintf("training accuracy : %f \n", mean(double(predict == y))*100);
load('spamTest.mat');

predictTest = svmPredict(model, Xtest);
fprintf("test accuracy : %f \n", mean(double(predictTest == ytest)) * 100);



file = 'spamSample.txt';
file_cont = readFile(file);
word_indices = processEmail(file_cont);
x = emailFeatures(word_indices);
p = svmPredict(model, x)



if(p == 1)
    elem = "spam"
else 
    elem = " not spam"
endif
fprintf("your email is %s \n", elem);

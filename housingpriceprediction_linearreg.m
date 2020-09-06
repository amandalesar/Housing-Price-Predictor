% I will implement multivariate linear regression 
% to predict the prices of houses. 
% This can be useful both if you are 
% selling your home (and want to know a good 
% market price) and if you are in the market 
% to buy a home (and want to understand the 
% predicted prices for homes with features 
% you desire). 

% The datasets included in this code are
% from the first exercise in 
% Andrew Ng’s Machine Learning Course on Coursera. 

% This code can be generalized to any data set 
% you wish you use; just make sure to keep 
% track of what data type is in each column!

%% Linear Regression

% Load Data
data = load('homepricedata.txt');
X = data(:, 1:end-1);
y = data(:, end);
m = length(y);
X = [ones(m, 1) X];


%  Train linear regression with lambda = 1
lambda = 1;
theta = zeros(size(X,2), 1);
[theta] = trainLinearReg(X, y, lambda)

% Predict new home price
newhome = load('newhomedata.txt');
newhomefeatures = [1 newhome];
price = 0;
for i = 1:size(X,2)
    price = price + theta(i)*newhomefeatures(i);
end

% ============================================================

fprintf('Predicted price of new home (using linear regression):\n $%f', price);


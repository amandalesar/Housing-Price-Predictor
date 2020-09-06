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

%% Gradient Descent Method

% Load the data
data = load('homepricedata.txt');
X = data(:, 1:end-1);
y = data(:, end);
m = length(y);

% Normalize features
% Scale features and set them to zero mean
[X, mu, sigma] = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];

% Run gradient descent
% Choose some alpha value
alpha = 0.05; %alpha was set at 0.1 but that overshot!! bad!
num_iters = 20;

% Init Theta and Run Gradient Descent 
theta = zeros(size(X,2), 1);
[theta, Jhistory] = gradientDescentMulti(X, y, theta, alpha, num_iters);
theta

% Estimate the price of new home.
newhome = load('newhomedata.txt');
price = theta(1); 
for i = 2:size(X,2)
    price = price + theta(i)*(newhome(i-1)-mu(i-1))/sigma(i-1);
end

% ============================================================

fprintf('Predicted price of new home (using gradient descent):\n $%f', price);


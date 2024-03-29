function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = size(X,2); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
     temp = zeros(m,1);
     for i = 1:m
         temp(i) = theta(i) - (alpha/m)*sum((X*theta-y).*X(:,i)); 
     end
     theta = temp;
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
end


# Housing Price Predictions

I will implement multivariate linear regression to predict the prices of houses. This can be useful both if you are selling your home (and want to know a good market price) and if you are in the market to buy a home (and want to understand the predicted prices for homes with features you desire). I will use the included dataset, though a user can upload their own dataset for housing prices in their desired area. This code is general and does not depend on the included dataset. This dataset was included in the first exercise from Andrew Ng’s Machine Learning Course on Coursera. 

This code can be generalized to any data set you wish you use; just make sure to keep track of what data type is in each column!
You can include as many features for homes in your data set as you wish (i.e. size of the home, the number of bedrooms, the number of bathrooms, the lot size, the number of stories, the yearly taxes, the monthly HOA fees, etc). This code generalizes to a dataset of any size. In the provided dataset, the first column is the size of the house (in square feet), the second column is the number of bedrooms, and the third column is the price of the house. 

You can train your predictor using two methods: gradient descent or the regularized linear regression cost function. I will explain both methods below, though the user should note they give nearly identical results, and it is simply up to user preference which method they prefer!

# Running the Project 

- Make sure you have MATLAB or Octave installed. 
- Clone the project to your local machine. 
- For the predictor using gradient descent, run housingpriceprediction_graddescent.m. 
- For the predictor using the regularized cost function, run housingpriceprediction_linearreg.m. 
- For a guided implementation, you can instead run the live script housingpriceprediction.mlx. 

# Project Details: Gradient Descent

First, let's predict the price of a home using the gradient descent method. 

I will load in a sample dataset (homepricedata.txt); however, you can use any data set you wish you use; just make sure to keep track of what data type is in each column! 

After we load our data, we first want to normalize our features. We subtract the mean of each feature from the dataset and scale the feature values by their standard deviations. Then, we can implement gradient descent. I have set the learning rate α to be 0.05. You can alter this value for your dataset, but note that if the learning rate alpha is too small we will have slow convergence; and if the learning rate alpha is too large, the cost function may not decrease on every iteration and may not converge.

After we have computed the cost and parameter values with gradient descent, we can predict the price of a new home. You can substitute in your values for your new home here by editing the existing file (newhomedata.txt) or uploading your own "new home" data file. Recall the features we used in our example: the size of the house (in square feet) and the number of bedrooms. If you've used your own data set, make sure your data in this "newhome" file is in the proper columns! Our code will output the predicted cost of a home with these features. 

# Project Details: Regularized Linear Regression

You can also use an alternative method: the regularized linear regression cost function. 

First we load in our training data set. Note that with this method, our features do not need to be normalized. My training function uses fminunc to optimize the cost function. For now, I will set my regularization parameter lambda equal to 1. You can adjust the regularization parameter as needed; however, for this problem, this value should suffice. After fminunc has finished running and your parameter values have been computed, we can predict the price of a new home by substituting your values for a home here by editing or uploading your own "new home" data file. Recall the features we used: the size of the house (in square feet) and the number of bedrooms. Make sure your data in this file is in the proper columns! Our code will output the predicted cost of a home with these features. 

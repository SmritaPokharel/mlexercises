function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% NOTE for the one who will check this assignment
% X isnot preprocessed since ex1_multi already does that.
% If X is to be preprocessed then following four lines should be uncommented
% x = ones(size(X),1);
% x = [x X];
% X= [];
% X = x;

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
	prediction = X*theta;
	sqrtError = (prediction -y).^2;
	J = 1/(2*m)* sum(sqrtError);
% =========================================================================
end

function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

% NOTE for the one who will check this assignment
% X isnot preprocessed since ex1_multi already does that.
% If X is to be preprocessed then following four lines should be uncommented
% x = ones(size(X),1);
% x = [x X];
% X= [];
% X = x;

theta = zeros(size(X, 2), 1);
% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%
% ---------------------- Sample Solution ----------------------
theta = pinv(X'*X) * X' *y;

% -------------------------------------------------------------


% ============================================================

end

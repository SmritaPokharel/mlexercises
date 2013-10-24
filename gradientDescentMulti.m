function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha


% NOTE for the one who will check this assignment
% X isnot preprocessed since ex1_multi already does that.
% If X is to be preprocessed then following four lines should be uncommented
% x = ones(size(X),1);
% x = [x X];
% X= [];
% X = x;


% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
predictionError = zeros(length(y),1);% it contains the value of prediction errors;
updateValue= zeros(length(theta),1);
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
  
 	prediction = X * theta; % It is the prediction.
	predictionError = prediction - y;% The difference between prediction and actual value is predictionError.
	updateValue = X' * predictionError;% This is the partial update value by which theta is updated.
	finalUpdateVal = alpha/(m)*updateValue;% This is the updateValue multiplied by alpha and divided by m( the number of  training 							examples)
        theta = theta - finalUpdateVal;%Its the updated value of theta
  	
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end

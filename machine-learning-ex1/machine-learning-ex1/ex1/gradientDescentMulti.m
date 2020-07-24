function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(X);
J_history = zeros(num_iters, 1);

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    % theta = theta - alpha/m * X' * (X*theta - y)

% num_iters of 2600
theta - ((alpha / m) * (X' * ((X*theta) - y)))
for i = 1:num_iters,
	h = X*theta;
	theta = theta - ((alpha / m) * (X' * (h - y)));
	J_history(i) = (1/(2*m)) * ((h - y)' *(h - y));
end
J_history(1:10,:);
J_history(num_iters - 10:num_iters,:);

%2043280050.60283




    % ============================================================

    % Save the cost J in every iteration    


end

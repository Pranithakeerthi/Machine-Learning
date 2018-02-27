function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
plot(X,y,'rx','MarkerSize',10);
ylabel("profit in $10,000's");
xlabel("population of city in 10,000's");

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    h=X * theta;
    t1= theta(1) - alpha*(1/m) * sum(h-y);
    t2= theta(2) - alpha * (1/m) * sum((h-y) .* X(:,2));
    theta(1) = t1;
    theta(2)= t2;



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end

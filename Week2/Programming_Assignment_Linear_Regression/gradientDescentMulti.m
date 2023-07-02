function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %



    sumatoria_delta = [];
    n = size(theta, 1);

    %fprintf('VALORES ...\n');
    %n
    %pause;

    Xt = X';
    temp = 0;
    for j = 1:n
      for i = 1:m
        hipotesis_evaluada = theta' * Xt(:,i);
        temp += (hipotesis_evaluada - y(i)) * X(i,j);
      endfor
      sumatoria_delta = [sumatoria_delta, temp];
      temp = 0;
    endfor
    delta = sumatoria_delta / m;
    theta = theta - (alpha * delta');

    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCostMultVectorial(X, y, theta);
    %J_history(iter) = computeCostMulti(X, y, theta);

end

end

function g = sigmoid(z)
    %SIGMOID Compute sigmoid function
    %   g = SIGMOID(z) computes the sigmoid of z.

    % You need to return the following variables correctly
    g = zeros(size(z));

    % Compute the sigmoid of each value of z
    for i = 1:numel(z)
        g(i) = 1 / (1 + exp(-z(i)));
    end

end



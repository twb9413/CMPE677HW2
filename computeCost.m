function J = computeCost(Xdata, Y, theta)
    n = length(Y); % number of training examples
    h = Xdata * theta;
    J = (1/(2*n)) * sum((h - Y) .^ 2); % cost function
end


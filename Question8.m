clear ;
data = load('ex1data1.txt'); % Dataset from Andrew Ng, Machine Learning MOOC
X = data(:, 1);
y = data(:, 2);
Xdata = [ones(length(X),1) X];
theta = zeros(2, 1); % initialize fitting parameters to zero
computeCost(Xdata,y,theta)
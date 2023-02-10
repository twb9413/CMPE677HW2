% What's the profit for a population of 35k and 70k, compare the normal
% and gradient descent answers

% Using Gradient Descent
clear ; close all;
data = load('ex1data1.txt'); % Dataset from Andrew Ng, Machine Learning MOOC
X = data(:, 1);
y = data(:, 2);
M = [ones(length(X),1) X];
theta_init = zeros(2, 1); % initialize fitting parameters to zero
% Some gradient descent settings
iterations = 1500;
alpha = 0.01;
% run gradient descent
theta_gd = gradientDescentLinear(M, y, theta_init, alpha, iterations);

% Using Normal Equations
theta_ne = ((M'*M)\M')*y;

% New Test Data
test1 = [1, 35000];
y_pred_gd = test1 * theta_gd;
y_pred_ne = test1 * theta_ne;
string = sprintf("Profit for populations of 35K, gd: %0.2f, ne: %0.2f", y_pred_gd, y_pred_ne);
disp(string);
test2 = [1, 70000];
y_pred_gd = test2 * theta_gd;
y_pred_ne = test2 * theta_ne;
string = sprintf("Profit for populations of 70K, gd: %0.2f, ne: %0.2f", y_pred_gd, y_pred_ne);
disp(string);


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
theta = gradientDescentLinear(M, y, theta_init, alpha, iterations)

% Plot the data that will be overlayed
plot(X, y, 'rx', 'MarkerSize', 10,'LineWidth',3); % Plot the data
ylabel('Profit in $10,000s'); % Set the y axis label
xlabel('Population of City in 10,000s'); % Set the x axis label
grid on

hold on
% use the theta calculated by gradient descent
y_pred = M * theta;
plot(X, y_pred, 'b', LineWidth=3)
xlim([0, 25])
ylim([-5, 30])
saveas(gcf, "HW2Q9.png")
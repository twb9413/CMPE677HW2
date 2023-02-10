clear ; close all;
%% Load Data
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
% Scale features and set them to zero mean with std=1
% Write a function featureNormalize.m which computes
% the mean and std of X, then returns a normalized version
% of X, where we substract the mean form each feature,
% then scale so that std dev = 1
[Xnorm, mu, sigma] = featureNormalize(X);
% Add intercept term to X
Xdata = [ones(length(X),1) Xnorm];
% Choose some alpha value
alpha = .01;
num_iters = 400;
% Init Theta and Run Gradient Descent
theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(Xdata, y, theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:num_iters, J_history,'LineWidth', 3);
xlabel('Iteration Number');
ylabel('Cost J');
saveas(gcf, "HW2Q12.png")

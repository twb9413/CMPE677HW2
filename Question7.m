clear ; close all;
data = load('ex1data1.txt'); % Dataset from Andrew Ng, Machine Learning MOOC
X = data(:, 1);
y = data(:, 2);
plot(X, y, 'rx', 'MarkerSize', 10,'LineWidth',3); % Plot the data
ylabel('Profit in $10,000s'); % Set the y axis label
xlabel('Population of City in 10,000s'); % Set the x axis label
grid on
% Use the normal equaitons method to solve for a linear line fit that goes
% through the data
hold on
M = [ones(length(data), 1), data(:,1:2)]; % add a column of 1s to the data
w = ((M'*M)\M')*y;
plot(y, M*w, 'g--', LineWidth=3)
xlim([0, 25])
ylim([-5, 30])
saveas(gcf, "HW2Q7.png")

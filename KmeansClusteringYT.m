clear all; close all; clc;
% K means clustering example with Statistical Learning Youtube course
% This will be demonstrated in two dimensions to allow us to plot pictures.

% First generate a random data set to work on

a = 5 *[randn(500,1)+5, randn(500,1)+5];
b = 5 *[randn(500,1)+5, randn(500,1)-5];
c = 5 *[randn(500,1)-5, randn(500,1)+5];
d = 5 *[randn(500,1)-5, randn(500,1)-5];
e = 5 *[randn(500,1), randn(500,1)];

all_data = [a;b;c;d;e];

size(all_data)

plot(a(:,1), a(:,2),'.'); hold on
plot(b(:,1), b(:,2),'.');
plot(c(:,1), c(:,2),'.');
plot(d(:,1), d(:,2),'.');
plot(e(:,1), e(:,2),'.');

Idx = kmeans(all_data, 5);

for k = 1:2500
    text(all_data(k,1),all_data(k,2),num2str(Idx(k)));hold on;
end














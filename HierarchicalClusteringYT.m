clear all; close all; clc;
%Generating sample data

a = 5 *[randn(500,1)+5, randn(500,1)+5];
b = 5 *[randn(500,1)+5, randn(500,1)-5];
c = 5 *[randn(500,1)-5, randn(500,1)+5];
d = 5 *[randn(500,1)-5, randn(500,1)-5];
e = 5 *[randn(500,1), randn(500,1)];

all_data = [a;b;c;d;e];

size(all_data)

figure(1)
plot(a(:,1), a(:,2),'.');hold on
plot(b(:,1), b(:,2),'.');
plot(c(:,1), c(:,2),'.');
plot(d(:,1), d(:,2),'.');
plot(e(:,1), e(:,2),'.');

Y = pdist(all_data);
Z = linkage(Y,'average');
threshold = 1.16;

figure(2)
T = cluster(Z,'cutoff',threshold);


for k = 1:2500
    text(all_data(k,1),all_data(k,2),num2str(T(k)));hold on;
end

axis([-70 70 -70 70])

figure(3)
treefigure = (linkage(Y, 'average'));
dendrogram(treefigure);





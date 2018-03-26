query1 = imread('query1.png');
target_01 = imread('target_01.jpg');
query1 = rgb2gray(query1);
target_01 = rgb2gray(target_01);

[m, n] = size(query1);
[M, N] = size(target_01);

target = target_01(1:m, 1:n);

for i = 1 : m
    for j = 1 : n
        
    end
end
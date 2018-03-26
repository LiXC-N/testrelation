query = imread('query1.png');
target = imread('target_01.jpg');
query = rgb2gray(query);
target = rgb2gray(target);

%change to double
query_d = im2double(query);
target_d = im2double(target);

[m, n] = size(query_d);
[M, N] = size(target_d);

size_m = M - m;
size_n = N - n;
result = zeros(size_m, size_n);

for i = 1 : size_m
    for j = 1 : size_n
        target_i_j = target_d(i:m + i - 1, j:n + j - 1);
        result(i, j) = query_d(:)' * target_i_j(:); 
    end
end


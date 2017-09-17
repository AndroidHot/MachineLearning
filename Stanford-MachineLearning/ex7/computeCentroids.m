function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

sum1 = zeros(1, n);
sum2 = zeros(1, n);
sum3 = zeros(1, n);
length1 = 0;
length2 = 0;
length3 = 0;
for i = 1 : m
    if idx(i) == 1
        sum1 += X(i, :);
        length1 += 1;
    end
    if idx(i) == 2
        sum2 += X(i, :);
        length2 += 1;
    end
    if idx(i) == 3
        sum3 += X(i, :);
        length3 += 1;
    end
end

centroids = [(sum1 / length1); (sum2 / length2); (sum3 / length3)];


% =============================================================


end


function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
size = X(:,1);
num_bed = X(:,2);


% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

size_mean = mean(size);
num_bed_mean = mean(num_bed);
mu = [size_mean num_bed_mean];
size_std = std(size);
num_bed_std = std(num_bed);
sigma = [size_std num_bed_std];

size_mean_norm = (size - size_mean)/size_std;
num_bed_norm = (num_bed - num_bed_mean)/num_bed_std;
X_norm = [size_mean_norm num_bed_norm];
X_norm(1:10,:)







% ============================================================

end

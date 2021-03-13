function x = emailFeatures(word_indices)
n = 1899;
x = zeros(n, 1);

for elem = 1:length(word_indices)
    x(word_indices(elem)) = 1;
end  

end

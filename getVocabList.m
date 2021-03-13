function vocabList = getVocabList()

    Elem = fopen('vocab.txt');
    n = 1899;
    % cell arrays can contain any type of data with indexes
    vocabList = cell(n, 1);
    for i = 1:n 
        fscanf(Elem, '%d', 1);
        vocabList{i} = fscanf(Elem, '%s', 1);
    end  
    fclose(Elem);
end